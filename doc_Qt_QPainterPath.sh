#================================================
# Qt - QPainterPath
#================================================

# drawn many times 
-> QPainter::drawPath() 

# reverse the order of the elements 
-> toReversed() 

#------------------------------------------------
# Composing a QPainterPath

# lines and curves can be added to the path 
-> lineTo(), arcTo(), cubicTo() and quadTo() 

# lines and curves stretch
-> currentPosition() 

# move the currentPosition() without adding a component. 
-> moveTo()

# closes the current path 
-> closeSubpath()

# initial currentPosition().
-> (0, 0)

# add closed subpaths to a painter path: 
-> addEllipse(), addPath(), addRect(), addRegion() and addText(). 

# adds an unclosed subpath. 
-> addPolygon()

# these functions are all collections 
-> moveTo(), lineTo() and cubicTo() 

# a path can be added to the current path 
-> connectPath() 

# shows how a QPainterPath object can be used:
QPainterPath path;
path.addRect(20, 20, 60, 60);

path.moveTo(0, 0);
path.cubicTo(99, 0,  50, 50,  99, 99);
path.cubicTo(0, 99,  50, 50,  0, 0);

QPainter painter(this);
painter.fillRect(0, 0, 100, 100, Qt::white);
painter.setPen(QPen(QColor(79, 106, 25), 1, Qt::SolidLine,
                    Qt::FlatCap, Qt::MiterJoin));
painter.setBrush(QColor(122, 163, 39));

painter.drawPath(path);

# set fill rule can be retrieved 
-> fillRule() 
-> setFillRule()
    
#------------------------------------------------
# QPainterPath Information

The QPainterPath class provides a collection of functions that returns 
information about the path and its elements.

The currentPosition() function 

#returns the end point of the last subpath 
-> currentPosition()

that was added (or the initial start point). The elementAt() function can 
be used to 

# retrieve the various subpath elements, 
-> elementAt()

# the number of elements can be retrieved 
-> elementCount()

# tells whether this QPainterPath object contains any elements
-> isEmpty()

# returns the rectangle containing all the points 
-> controlPointRect()

# returns the bounding rectangle of this painter path 
-> boundingRect()

Finally, QPainterPath provides the contains() function which can be used to 

# determine whether a given point or rectangle is inside the path,
-> contains()

# the points inside a given rectangle also are inside this path.
-> intersects()

#------------------------------------------------





