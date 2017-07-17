#================================================
# Qt - QGraphicsView
#================================================

# visualize a scene, 
-> QGraphicsView s constructor. 
-> setScene()

# display any items that are visible at this point
-> show(), 
-> scroll to the center of the scene 

# For example
QGraphicsScene scene;
scene.addText("Hello, world!");

QGraphicsView view(&scene);
view.show();

# scroll to any position on the scene 
-> centerOn()

# ensure that a certain area is visible, 
-> ensureVisible()

# visualized area is by default detected 
-> QGraphicsScene::itemsBoundingRect())

# set the visualized area rectangle yourself, 
-> setSceneRect(). 
-> scroll bars will never exceed 
-> the range of an integer (INT_MIN, INT_MAX).

# QGraphicsView visualizes the scene
-> render(). 

# change the default render hints 
-> setRenderHints().

# access the viewport widget. 
-> viewport(), 

# replace the viewport widget.
-> setViewport(). 

# render using OpenGL, 
-> setViewport(new QGLWidget). 

# QGraphicsView supports affine transformations, 
-> setTransform(), 
-> rotate(), scale(), translate() or shear(). 

# QGraphicsView keeps the center of the view fixed 
-> setAligment()

# QGraphicsView translates the mouse and key events into scene events, 
-> inherit QGraphicsSceneEvent

# Item interaction is enabled by default
-> setInteractive().

# provide your own custom scene interaction, 
-> creating a subclass of QGraphicsView, 
-> and reimplementing the mouse and key event handlers. 

# QGraphicsView provides the mapping functions 
-> mapToScene() and mapFromScene(), 

# item accessors 
-> items() and itemAt(). 

#================================================
# Qt - QGraphicsScene
#================================================

# visualize the whole scene,
QGraphicsScene scene;
scene.addText("Hello, world!");

QGraphicsView view(&scene);
view.show();

# visualize the scene.
-> create a QGraphicsView

# add items to a scene, 
-> addItem()
-> addEllipse(), 
-> addLine(), 
-> addPath(), 
-> addPixmap(), 
-> addPolygon(), 
-> addRect(), 
-> addText(), 

# The dimensions of the items added with these functions are relative
-> the item s coordinate system is initialized to (0, 0) in the scene.

# When the scene changes, (e.g., when an item moves or is transformed) 
-> QGraphicsScene emits the changed() signal. 

# remove an item, 
-> removeItem().

# QGraphicsScene uses an indexing algorithm to manage the location 
# of items efficiently. 
-> setItemIndexMethod(). 

For more information about the available indexing algorithms, 
see the itemIndexMethod property.

# scene s bounding rect is set 
-> setSceneRect(). 

# QGraphicsScene will use the bounding area of all items, 
-> itemsBoundingRect(), 

# determine the location of an item
-> items()

# returns the topmost item at a given position.
-> itemAt()

# select items, 
-> setSelectionArea(), 

# clear the current selection, 
-> clearSelection(). 

# get the list of all selected items.
-> selectedItems()

# Another responsibility that QGraphicsScene has, 
-> is to propagate events from QGraphicsView. 

# send an event to a scene, 
-> inherits QEvent, 
-> QApplication::sendEvent(). 

# responsible for dispatching the event to the individual items. 
-> event()

# key press events are handled 
-> keyPressEvent(), 

# mouse press events are handled 
-> mousePressEvent().

# set the focus item, 
-> setFocusItem(), 
-> QGraphicsItem::setFocus(). 

# get the current focus item. 
-> focusItem()

# scene has focus, 
-> hasFocus() will return true, 

# scene loses focus, 
-> clearFocus()) 

# QGraphicsScene dispatches hover events. 
-> QGraphicsItem::acceptHoverEvents()

# when the mouse enters its area. 
-> receive a GraphicsSceneHoverEnter event 

# mouse continues moving inside the item s area, 
-> QGraphicsScene will send it GraphicsSceneHoverMove events. 

# When the mouse leaves the item's area, 
-> receive a GraphicsSceneHoverLeave event.

# All mouse events are delivered to the current mouse grabber item. 
-> QGraphicsItem::acceptedMouseButtons()

# determine what item is currently grabbing the mouse.
-> mouseGrabberItem()

#================================================
# Qt - QGraphicsItem
#================================================

# The QGraphicsItem class 
-> is the base class for all graphical items in a QGraphicsScene.

# Qt provides a set of standard graphics items for the most common shapes. 
-> QGraphicsEllipseItem provides an ellipse item
-> QGraphicsLineItem provides a line item
-> QGraphicsPathItem provides an arbitrary path item
-> QGraphicsPixmapItem provides a pixmap item
-> QGraphicsPolygonItem provides a polygon item
-> QGraphicsRectItem provides a rectangular item
-> QGraphicsSimpleTextItem provides a simple text label item
-> QGraphicsTextItem provides an advanced text browser item

# All of an item s geometric information is based 
-> pos(), 

# item should be visible 
-> setVisible(). 

# enable or disable an item 
-> setEnabled(). 

# toggle whether an item is selected or not, 
-> setting the ItemIsSelectable flag, 
-> setSelected(). 

# write your own graphics item, 
-> create a subclass of QGraphicsItem, 
-> implementing its two pure virtual public functions: 
-> boundingRect(), which returns an estimate of the area painted by the item, 
-> paint(), which implements the actual painting. 

# For example:
class SimpleItem : public QGraphicsItem
{
public:
    QRectF boundingRect() const
    {
        qreal penWidth = 1;
        return QRectF(-10 - penWidth / 2, -10 - penWidth / 2,
                      20 + penWidth, 20 + penWidth);
    }

    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option,
    QWidget *widget)
    {
        painter->drawRoundedRect(-10, -10, 20, 20, 5, 5);
    }
};

# The boundingRect() function has many different purposes. 
-> QGraphicsScene bases its item index on boundingRect(), 
-> QGraphicsView uses it both for culling invisible items, 
-> QGraphicsItems collision detection mechanisms use boundingRect() 
-> fine grained collision algorithm in collidesWithItem() 
-> is based on calling shape(), 
-> which returns an accurate outline of the item s shape as a QPainterPath.

# change an item s geometry in any way, 
-> prepareGeometryChange() to allow QGraphicsScene to update its bookkeeping.

# Collision detection can be done in two ways:
-> Reimplement shape() 
-> to return an accurate shape for your item
-> rely on the default implementation of collidesWithItem() 
-> to do shape-shape intersection. 
-> Reimplement collidesWithItem() 
-> to provide your own custom item and shape collision algorithm.

# determine whether the item contains a point or not. This function can also be reimplemented by the item. The default behavior of contains() is based on calling shape().
-> contains() 

#------------------------------------------------
# Transformations

# QGraphicsItem supports projective transformations 
-> pos(). 

# simple transformations, 
-> setRotation() or setScale(), 
-> setTransform(). 

# For advanced transformation control 
-> setTransformations().

# item's transformation does not affect its own local geometry; 
-> contains(), update(), 

# returns the item's total transformation matrix 
-> sceneTransform(),

# returns its position in scene coordinates
-> scenePos(), 

# reset an item's matrix, 
-> resetTransform().

# item's base transform is applied 
-> transform()

# item's transformations list is applied in order 
-> transformations()

# item is rotated relative to its transform origin point 
-> rotation(), transformOriginPoint()

# item is scaled relative to its transform origin point 
-> scale(), transformOriginPoint()

#------------------------------------------------
# Painting

# paint the item's contents.
-> paint()

# schedule a repaint, 
-> repaint()

# the item may or may not be repainted; 
-> there is no equivalent to QWidget::repaint() 
-> in QGraphicsItem.

# set an item's stacking 
-> setZValue(), 
-> zValue(), 

#------------------------------------------------
# Sorting

# stack it on top
-> setZValue()

# reorder the list of children. 
-> stackBefore()

#------------------------------------------------
# Events

# QGraphicsItem receives events from QGraphicsScene 
-> sceneEvent(). 

# handles context menu events
-> contextMenuEvent() 

# handle focus in and out events
-> focusInEvent() and focusOutEvent() 

# handles hover enter, move and leave events
-> hoverEnterEvent(), hoverMoveEvent(), and hoverLeaveEvent() 

# handles input events, for accessibility support
-> inputMethodEvent() 

# handle key press and release events
-> keyPressEvent() and keyReleaseEvent() 

# handles mouse press, move, release, click and doubleclick events
-> mousePressEvent(), 
-> mouseMoveEvent(), 
-> mouseReleaseEvent(), 
-> and mouseDoubleClickEvent() 

# filter events for any other item by installing event filters. 
-> QObject::installEventFilter()

# installing your item as an event filter for another item 
-> installSceneEventFilter(), 

# filtered events will be received 
-> sceneEventFilter(). 

# remove item event filters 
-> removeSceneEventFilter().

#------------------------------------------------
# Custom Data

# store data in it using a key-value pair
-> setData()

# get custom data from an item, 
-> data(). 

#================================================
# Qt - QGraphicsPixmapItem
#================================================

# set the item's pixmap, 
-> pass a QPixmap to QGraphicsPixmapItem s constructor, 
-> setPixmap()

# returns the current pixmap
-> pixmap()

# provide a reasonable implementation
-> boundingRect(), shape(), and contains().

# pixmap is drawn at the item's (0, 0) coordinate, 
-> offset()

# change the drawing offset
-> setOffset().

# set the pixmap's transformation mode
-> setTransformationMode()

# Qt::FastTransformation is used
-> fast, non-smooth scaling. 

# Qt::SmoothTransformation enables 
-> QPainter::SmoothPixmapTransform on the painter, 
-> and the quality depends on the platform and viewport. 

# result is usually not as good as
-> QPixmap::scale() 

# get the current transformation mode
-> transformationMode()

#================================================
# Qt - QGraphicsRectItem
#================================================

# set the item's rectangle, 
-> setRect() 

# returns the current rectangle.
-> rect()

# QGraphicsRectItem uses the rectangle and the pen width 
-> boundingRect(), shape(), and contains(). 

# draws the rectangle using the item's associated pen and brush, 
-> paint()
-> setPen()
-> setBrush()

# create normalized rectangles,
-> QRectF::normalized()

#================================================
# Qt - QGraphicsWidget
#================================================

The QGraphicsWidget class is the base class for all widget items in a 
QGraphicsScene.

QGraphicsWidget is an extended base item that provides extra functionality 
over QGraphicsItem. It is similar to QWidget in many ways:

# Provides a palette, a font and a style
-> style().
-> geometry().

# Supports layouts 
-> setLayout() and layout().

# Supports shortcuts and actions 
-> grabShortcut() and insertAction()

#================================================
# Qt - QPainter
#================================================

# For example:
void SimpleExampleWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.setPen(Qt::blue);
    painter.setFont(QFont("Arial", 30));
    painter.drawText(rect(), Qt::AlignCenter, "Qt");
}

# indicates whether the painter is active. 
-> isActive()

# painter is activated 
-> begin() 
-> end() 

# returns the paint device on which the painter paints, 
-> device()

# returns the paint engine that the painter is currently operating on. 
-> paintEngine() 

# QPainter supports a static function to do this, 
-> setRedirected().

# QPainter can only be used inside
-> paintEvent() 

#------------------------------------------------
# Settings

# font used for drawing text
->  font() 

# retrieve information about the currently set font, and its metrics, 
-> fontInfo() and fontMetrics() 

# defines the color or pattern that is used for filling shapes.
-> brush() 

# defines the color or stipple that is used for drawing lines or boundaries.
-> pen() 

# defines whether there is a background() or not
-> backgroundMode()
-> Qt::OpaqueMode or Qt::TransparentMode.
-> background() 

# defines the origin of the tiled brushes
-> brushOrigin() 
-> normally the origin of widget s background.

# make up the painter s coordinate transformation system. 
-> viewport(), window(), worldTransform() 

# tells whether the painter clips at all
-> hasClipping() 
-> clipRegion().

# defines the layout direction used by the painter when drawing text.
-> layoutDirection() 

# tells whether world transformation is enabled.
-> worldMatrixEnabled() 

# tells whether view transformation is enabled.
-> viewTransformEnabled() 

# some of these settings mirror settings in some paint devices, 
-> QWidget::font(). 
-> QPainter::begin() 

# save the QPainter's state 
-> save() 

# pops them back.
restore()  

#------------------------------------------------
# Drawing

# QPainter provides functions to draw most primitives: 
-> drawPoint(), drawPoints(), drawLine(), drawRect(), 
-> drawRoundedRect(), drawEllipse(), drawArc(), drawPie(), 
-> drawChord(), drawPolyline(), drawPolygon(), 
-> drawConvexPolygon() and drawCubicBezier(). 

# draw the given number of rectangles or lines 
-> drawRects() and drawLines(), 

# fills the given QRect, with the given QBrush, 
-> fillRect()

# erases the area inside the given rectangle.
-> eraseRect()

# draw a complex shape, 
-> creating a QPainterPath 
-> and drawing it using drawPath().

# fills the given QPainterPath with the given QBrush, 
-> fillPath()

# draws the outline of the given path 
-> strokePath()





















