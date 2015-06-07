slate.config("orderScreensLeftToRight", true);

// Create Operations
var pushRight2_3 = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:3*screenSizeX/5"
});
var pushLeft1_3 = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:2*screenSizeX/5"
});
var pushLeft1_2 = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/2"
});
var pushLeft1_2_top = slate.operation("corner", {
  "direction" : "top-left",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});
var pushLeft1_2_bottom = slate.operation("corner", {
  "direction" : "bottom-left",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});
var pushRight1_2 = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/2"
});
var pushTop = slate.operation("push", {
  "direction" : "top",
  "style" : "bar-resize:screenSizeY/2"
});
var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

var devLayout = slate.layout("devLayout", {
  "iTerm" : {
    "operations" : [pushLeft1_3],
    "repeat" : true
  },
  "Sublime Text" : {
    "operations" :[pushRight2_3],
    "repeat" : true
  }
});

var messageLayout = slate.layout("messageLayout", {
  "Nachrichten" : {
    "operations" : [pushLeft1_2_bottom],
    "repeat" : true
  },
  "Telegram" : {
    "operations" : [pushLeft1_2_top],
    "repeat" : true
  },
  "Skype" : {
    "operations" :[pushRight1_2],
    "repeat" : true
  }
});

var communicationLayout = slate.layout("communicationLayout", {
  "Twitter" : {
    "operations" : [pushLeft1_3],
    "repeat" : true
  },
  "Mail" : {
    "operations" :[pushRight2_3],
    "repeat" : true
  }
});

slate.bind("1:cmd;ctrl", function() { setDev(); });
slate.bind("2:cmd;ctrl", function() { setMessage(); });
slate.bind("3:cmd;ctrl", function() { setCommunication(); });

slate.default(["1440*900"], devLayout);

var runIfMap  = {
    "Nachrichten": "/Applications/Messages.app",
    "Skype": "/opt/homebrew-cask/Caskroom/skype/latest/Skype.app",
    "iTerm": "/opt/homebrew-cask/Caskroom/iterm2/2.0/iTerm.app",
    "Sublime Text": "/Applications/Sublime Text.app",
    "Mail": "/Applications/Mail.app",
    "Twitter": "/Applications/Twitter.app",
    "Telegram": "/Applications/Telegram.app"
};

function runIf(name) {
    var running = false;
    slate.eachApp(function (app) {
        if (app.name() == name) {
            running = true;
        }
    });
    if (!running) {
      slate.shell("/usr/bin/open " + '"' + runIfMap[name] + '"', true, "~/");
    }
}

function setDev() {
  runIf("iTerm");
  runIf("Sublime Text");
  var op = slate.operation("layout", { "name" : devLayout });
  op.run();
}

function setMessage() {
  runIf("Nachrichten");
  runIf("Skype");
  runIf("Telegram");
  var op = slate.operation("layout", { "name" : messageLayout });
  op.run();
}

function setCommunication() {
  runIf("Twitter");
  runIf("Mail");
  var op = slate.operation("layout", { "name" : communicationLayout });
  op.run();
}