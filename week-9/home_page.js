/ DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className = "done";


// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:

document.getElementsByTagName("H1")[0].innerHTML="I completed release 2.";


// Release 3:

document.getElementById('release-3').style.backgroundColor="#955251";



// Release 4:

var x = document.getElementsByClassName("release-4");
var i;
for( i = 0; i < x.length; i++ ) {
    x[i].style.fontSize="2em";
}


// Release 5:

var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));

/*Reflection

What did you learn about the DOM?


The Document Object Model is a platform- and language-neutral interface that will allow programs and scripts to dynamically access and update the content, structure and style of documents. The document can be further processed and the results of that processing can be incorporated back into the presented page. This is an overview of DOM-related materials here at W3C and around the web.

What are some useful methods to use to manipulate the DOM?

Traversing the DOM means navigating it - selecting specific elements, iterating over groups of elements etc...

Like you can use getElementById etc.


*/