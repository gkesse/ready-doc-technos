#================================================
# QCustomPlot
#================================================

#------------------------------------------------
# gestion création graphe
#------------------------------------------------   
# ajout graphe
customPlot->addGraph(); 
# couleur contour
customPlot->graph(0)->setPen(QPen(Qt::blue)); 
# couleur fond
customPlot->graph(0)->setBrush(QBrush(QColor(255, 50, 255, 255)));
# ajout données
customPlot->graph(0)->setData(x, y);
# ajout abscisse
customPlot->xAxis->setLabel("x");  
# ajout ordonnée
customPlot->yAxis->setLabel("y");
# ajout borne abscisse
customPlot->xAxis->setRange(-1, 1);
# ajout borne ordonnée
customPlot->yAxis->setRange(0, 1);
# ajout visibilité axe abscisse
customPlot->xAxis2->setVisible(true);
# ajout visibilité label abscisse 
customPlot->xAxis2->setTickLabels(false);
# ajout visibilité axe ordonnée
customPlot->yAxis2->setVisible(true);
# ajout visibilité label ordonnée
customPlot->yAxis2->setTickLabels(false);

#------------------------------------------------
# gestion connexion graphe
#------------------------------------------------   
# transmission borne ordonnée
connect(customPlot->xAxis, SIGNAL(rangeChanged(QCPRange)), customPlot->xAxis2, SLOT(setRange(QCPRange)));
# transmission borne abscisse
connect(customPlot->yAxis, SIGNAL(rangeChanged(QCPRange)), customPlot->yAxis2, SLOT(setRange(QCPRange)));










