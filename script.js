var fancyText = document.getElementById('nameFancy');
var intervalTime = 180;
var initialPause = 1000;
var callbackPause = 700;



function deleteContent(callback) {
    var intervalId = setInterval(function() {
        if (fancyText.innerHTML.length == 0) {
            clearInterval(intervalId);
            if (callback) {
                setTimeout(callback, callbackPause);
            }
        }

        fancyText.innerHTML = fancyText.innerHTML.substring(0, fancyText.innerHTML.length - 1);
    }, intervalTime);
}

function addContent(contentToAdd, callback) {
    var currentIndex = 0;

    var intervalId = setInterval(function() {
        if (currentIndex == contentToAdd.length) {
            clearInterval(intervalId);

            if (callback) {
                setTimeout(callback, callbackPause);
            }
        }

        fancyText.innerHTML = contentToAdd.substring(0, currentIndex);
        currentIndex++;
    }, intervalTime);
}


setTimeout(function() {
  deleteContent(function() {
      addContent("a CS student", function() {
          deleteContent(function() {
              addContent("a learner", function() {
                  deleteContent(function() {
                      addContent("Uyen Dinh");
                  });
              });
          });
      });
  });
  repeat()
}, initialPause);

function repeat() {
    setTimeout(function() {
      deleteContent(function() {
          addContent("a CS student", function() {
              deleteContent(function() {
                  addContent("a learner", function() {
                      deleteContent(function() {
                          addContent("Uyen Dinh");
                          repeat();
                      });
                  });
              });
          });
      });
    }, initialPause);
}
