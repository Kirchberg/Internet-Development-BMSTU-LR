var str = "&nbsp;";
function enumChildNodes(node) {
    if (node.nodeType == 1) {
        var child = node.firstChild;
        while (child) {
            if (child.nodeType == 1) {
                if (child.nodeName == "HEAD" || child.nodeName == "BODY" ||
                    child.nodeName == "DIV") {
                  str = "&nbsp;";
                } else {
                  str = "&nbsp;&nbsp;&nbsp;";
                }
                document.writeln();
                document.writeln(str + child.nodeName);
                console.log(child.nodeName);
                enumChildNodes(child);
            };
            child = child.nextSibling;
        };
    };
};
