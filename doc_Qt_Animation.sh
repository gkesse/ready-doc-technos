#================================================
# Qt - Macros
#================================================
 
# Q_OBJECT
La macro Q_OBJECT doit apparaître dans la section privée 
d une définition de classe qui déclare ses propres signaux 
et slots à sous ou qui utilise d autres services fournis 
par le système méta-objet de Qt.

# Q_PROPERTY
Cette macro est utilisée pour déclarer les propriétés dans les classes 
qui héritent de QObject. Les propriétés se comportent comme des 
membres de données de classe, mais elles ont des fonctionnalités 
supplémentaires accessibles via le système Meta-Object.

# QT_TRANSLATE_NOOP
Marque le texte de la chaîne sourceText pour la traduction 
dynamique dans le contexte donné; À savoir, la source source 
stockée ne sera pas modifiée. Le contexte est généralement 
une classe et doit également être spécifié comme chaîne littérale.

#================================================
# Qt - Methods
#================================================

# QGraphicsItem::setCacheMode
Définit le mode de cache de l élément en mode.

# QGraphicsItem::DeviceCoordinateCache
La mise en cache est activée au niveau du dispositif de peinture, 
dans les coordonnées de l appareil. 
Ce mode correspond aux objets pouvant se déplacer, 
mais ne sont pas tournés, mis à l échelle ou cisaillés. 
Si l élément est transformé directement ou indirectement, 
le cache sera régénéré automatiquement. 
    
# QGraphicsItem::setAcceptHoverEvents
Si activé est vrai, cet élément acceptera les événements de survoltage; 
Sinon, il les ignorera. 
Par défaut, les éléments n acceptent pas les événements suspendus.

# QGraphicsItem::boundingRect
Cette fonction virtuelle pure définit les limites extérieures 
de l objet en tant que rectangle; Toute la peinture doit être limitée à 
l intérieur du rectangle d une pièce. QGraphicsView utilise 
ceci pour déterminer si l article nécessite le redessinage.

# QGraphicsItem::shape
Renvoie la forme de cet élément en tant que QPainterPath dans les 
coordonnées locales. La forme est utilisée pour beaucoup de choses, 
y compris la détection de collision, les tests de succès et les fonctions 
QGraphicsScene::items ().

# QPainterPath::addEllipse
Crée une ellipse dans le rectangle délimité spécifié 
et l ajoute au chemin du peintre comme sous-chemin fermé.

# QGraphicsItem::paint
Cette fonction, appelée habituellement par QGraphicsView, peint le 
contenu d un élément dans les coordonnées locales.

# QStyleOption::state
Cette variable contient les drapeaux de style utilisés lors du 
dessin du contrôle.

# QStyle::State_Sunken
Utilisé pour indiquer si le widget est enfoncé ou pressé.

# QGradient::setColorAt
Crée un point d arrêt à la position donnée avec la couleur donnée. 
La position donnée doit être comprise entre 0 et 1.

# QStyle::State_MouseOver
Utilisé pour indiquer si le widget est sous la souris.

# QPainter::setPen
Définit le stylo du peintre pour être le stylo donné.

# QPainter::setBrush
Définit la brosse du peintre sur la brosse donnée.

# QPainter::drawEllipse
Dessine l ellipse définie par le rectangle donné.

# QPainter::translate
Traduire le système de coordonnées par le décalage donné; 
C est-à-dire que le décalage donné est ajouté aux points.

# QPainter::drawPixmap
Dessine la source de la partie rectangulaire du pixmap donné 
dans la cible donnée dans le dispositif de peinture.

# QGraphicsItem::mousePressEvent
Ce gestionnaire d événements, pour l événement, peut être réimplémenté 
pour recevoir des événements de presse de souris pour cet élément. 
Les événements de presse de la souris ne sont livrés qu aux éléments 
qui acceptent le bouton de la souris qui est pressé. 
Par défaut, un élément accepte tous les boutons de la souris, 
mais vous pouvez le modifier en appelant setAcceptedMouseButtons ().

# QGraphicsItem::mouseReleaseEvent
Ce gestionnaire d événements, pour l événement, peut être réimplémenté 
pour recevoir les événements de sortie de la souris pour cet élément.

# QGraphicsItem::update
Planifie un nouveau redraw de la zone couverte par rect dans cet élément. 
Vous pouvez appeler cette fonction chaque fois que votre élément 
doit être redessiné, par exemple s il change d aspect ou de taille.

# QGraphicsView::resizeEvent
Ce gestionnaire d événements peut être réimplémenté dans une sous-classe 
pour recevoir des événements de redimensionnement de widget qui sont passés 
dans le paramètre de l événement. Lorsque resizeEvent () est appelé, 
le widget a déjà sa nouvelle géométrie. L ancienne taille est accessible 
via QResizeEvent::oldSize ().

# QGraphicsView::fitInView
Mise à l échelle de la matrice de vue et défile les barres de défilement 
pour s assurer que le rectangle de la scène s insère dans la fenêtre. 
Rect doit être dans la scène rect; Sinon, fitInView () ne peut pas 
garantir que tout le rect est visible.

# QGraphicsView::sceneRect
Cette propriété contient la zone de la scène visualisée par cette vue.

# Qt::KeepAspectRatioByExpanding
La taille est réduite à un rectangle aussi petit que possible 
à l extérieur d un rectangle donné, en conservant le rapport d aspect.

# QGraphicsPixmapItem::setOffset
Définit le décalage de l élément pixmap pour compenser. 
QGraphicsPixmapItem dessine son pixmap en utilisant le décalage 
pour son coin supérieur gauche.

# QGraphicsItem::setZValue
Définit la valeur Z de l élément sur z. La valeur Z décide de l ordre 
d empilement des articles des frères et soeurs (voisins). 
Un élément de fratrie de haute valeur Z sera toujours dessiné 
sur un autre élément de fratrie avec une valeur Z inférieure.

# QGraphicsScene::addItem
Ajoute ou déplace l élément et tous ses enfants à cette scène. 
Cette scène prend possession de l élément.

# QGraphicsItem::setPos
Définit la position de l élément à pos, qui est en coordonnées parentales. 
Pour les éléments sans parent, pos est en coordonnées de scène.

# QGraphicsItem::setTransform
Définit la matrice de transformation actuelle de l élément en matrice.
Si la combinaison est vraie, la matrice est combinée avec 
la matrice actuelle; Sinon, la matrice remplace la matrice actuelle. 
Combiner est faux par défaut.

# QTransform::fromScale
Crée une matrice qui correspond à une mise à l échelle 
de sx horizontalement et sy verticalement. 
C est la même chose que QTransform().scale(sx,sy) 
mais légèrement plus rapide.

# QState::assignProperty
Indique cet état pour définir la propriété avec le nom donné de 
l objet donné à la valeur donnée lorsque l état est entré.

# QWidget::setWindowTitle
Cette propriété détient le titre de la fenêtre (légende).
Cette propriété n a de sens que pour les widgets de haut niveau, 
tels que les fenêtres et les dialogues. 
Si aucune légende n a été définie, le titre est basé 
sur WindowFilePath. Si aucun de ces éléments n est défini, 
le titre est une chaîne vide.

# QGraphicsView::setViewportUpdateMode
Cette propriété contient la façon dont la fenêtre doit mettre 
son contenu à jour. QGraphicsView utilise cette propriété pour décider comment 
mettre à jour les zones de la scène qui ont été re-exposées ou 
modifiées. Habituellement, vous n avez pas besoin de modifier 
cette propriété, mais il existe des cas où cela peut améliorer 
les performances de rendu. 

# QGraphicsView::BoundingRectViewportUpdate
Le rectangle délimitant toutes les modifications dans la fenêtre 
sera redessiné. Ce mode présente l avantage que QGraphicsView 
recherche uniquement une région pour les changements, 
ce qui minimise le temps passé à déterminer ce qu il faut 
redessiner. L inconvénient est que les zones qui n ont 
pas changé doivent également être redessinées.

# QGraphicsView::setBackgroundBrush
Cette propriété contient la brosse de fond de la scène.
Cette propriété définit la brosse de fond pour la scène dans 
cette vue. Il sert à remplacer l arrière-plan de la scène et 
définit le comportement de drawBackground(). 
Pour fournir un dessin d arrière-plan personnalisé pour cette vue, 
vous pouvez réimpliquer drawBackground() à la place.

# QGraphicsView::CacheBackground
L arrière-plan est mis en cache. Cela affecte à la fois les 
arrière-plans personnalisés et les arrière-plans en fonction de 
la propriété backgroundBrush. Lorsque ce drapeau est activé, 
QGraphicsView allouera un pixmap avec la pleine taille de la fenêtre.

# QGraphicsView::setRenderHints
Cette propriété contient les astuces de rendu par défaut pour 
la vue. Ces astuces sont utilisées pour initialiser QPainter 
avant que chaque élément visible ne soit dessiné. 
QPainter utilise des astuces de rendu pour basculer 
les fonctionnalités de rendu telles que l antialiasing et la 
transformation de pixmap lisse.

# QPainter::Antialiasing
Indique que le moteur devrait antialias les bords des primitives 
si possible.

# QPainter::SmoothPixmapTransform
Indique que le moteur devrait utiliser un algorithme de 
transformation pixmap lisse (tel que bilinéaire) plutôt que 
le voisin le plus proche.

# QWidget::show
Affiche le widget et ses widgets enfants.
Cela équivaut à appeler showFullScreen(), showMaximized() ou 
setVisible(true), en fonction du comportement par défaut 
de la plate-forme pour les indicateurs de fenêtre.

# QStateMachine::addState
Ajoute l état donné à cette machine d état. L état devient 
un état de haut niveau. Si l état est déjà dans une machine 
différente, il sera d abord retiré de son ancienne machine, 
puis ajouté à cette machine.

# QState::setInitialState
Cette propriété contient l état initial de cet état 
(un de ses états d enfant).

# QVariantAnimation::setDuration
Cette propriété tient la durée de l animation.
Cette propriété décrit la durée en millisecondes de l animation. 
La durée par défaut est de 250 millisecondes.

# QVariantAnimation::setEasingCurve
Cette propriété contient la courbe d assouplissement de 
l animation. Cette propriété définit la courbe d assouplissement 
de l animation. Par défaut, une courbe d assouplissement linéaire
est utilisée, ce qui entraîne une interpolation linéaire. 
D autres courbes sont fournies, par exemple, QEasingCurve::InCirc, 
qui fournit une courbe d entrée circulaire. 
Un autre exemple est QEasingCurve :: InOutElastic, qui fournit 
un effet élastique sur les valeurs de la variante interpolée.

# QEasingCurve::InOutQuad
Courbe d atténuation pour une fonction quadratique (t^2): 
accélération jusqu à mi-course, puis décélération.

# QAnimationGroup::addAnimation
Ajoute de l animation à ce groupe. 
Cela appellera l insertion d animation avec des index 
égaux à l animationCount().

# QState::addTransition
Ajoute une transition associée au signal donné de 
l objet émetteur donné et renvoie le nouvel objet 
QSignalTransition. La transition a cet état comme source 
et la cible donnée comme l état cible.

# QAbstractTransition::addAnimation
Ajoute l animation donnée à cette transition. 
La transition ne prend pas en compte l animation.

# QTimer::start
Démarre ou redémarre la minuterie avec un intervalle de 
temporisation de millisecondes. Si la minuterie est déjà en 
cours d exécution, elle sera arrêtée et redémarré. Si singleShot 
est vrai, la minuterie ne sera activée qu une seule fois.

# QTimer::setSingleShot
Cette propriété détermine si la minuterie est une minuterie 
à un seul plan. Un temporisateur à un seul tir déclenche 
une seule fois, les temporisateurs non-déclencheurs 
déclenchent chaque intervalle de millisecondes.

# QStateMachine::start
Démarre cette machine d état. La machine réinitialise sa 
configuration et la transition vers l état initial. 
Lorsqu un état final de niveau supérieur (QFinalState) est entré, 
la machine émettra le signal finished().

# QApplication::setNavigationMode
Définit le type de navigation de mise au point que Qt devrait 
utiliser pour le mode. Cette fonctionnalité est disponible dans 
Qt pour Embedded Linux et Windows CE uniquement.

# Qt::NavigationModeCursorAuto
Le curseur de la souris permet de modifier la mise au point, 
il est affiché uniquement sur des appareils non tactiles. 
Le clavier est utilisé pour implémenter un curseur virtuel, 
à moins que le périphérique ne possède un type d entrée de type 
analogique (par exemple, pavé tactile). 
C est le paramètre recommandé pour une application telle 
qu un navigateur Web qui a besoin d un contrôleur de pointeur 
sur les appareils tactiles et non touchants.
