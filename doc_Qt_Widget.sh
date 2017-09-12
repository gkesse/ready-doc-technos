#================================================
# Qt Widget
#================================================

#------------------------------------------------
# No Widget
#------------------------------------------------
# QLayout
layout->addItem(hbox);
layout->addWidget(groupBox);

# QHBoxLayout
hbox->setSpacing(20);
hbox->addWidget(label);

# QVBoxLayout
vbox->addWidget(new QRadioButton(QString::fromLatin1(profiles[i].str)));
static_cast<QRadioButton *>(vbox->itemAt(0)->widget())->setChecked(true);

#------------------------------------------------
# Widget
#------------------------------------------------
# QWidget
w->setLayout(layout);

# QLabel
label->setBuddy(m_version);

# QComboBox
m_version->addItem(QString::fromLatin1(versions[i].str));
m_version->setCurrentIndex(m_version->count() - 1);
m_version->currentIndex();

# QPushButton
btn->setMinimumSize(120, 40);
connect(btn, &QPushButton::clicked, this, &Widget::start);

# QGroupBox
groupBox->setLayout(vbox);

# QSplitter
hsplit->addWidget(widgetWithLayout(settingsLayout));
hsplit->setStretchFactor(0, 4);

# QSplitter(Qt::Vertical)
vsplit->addWidget(hsplit);
vsplit->setStretchFactor(1, 5);

# QTextEdit
m_output->setReadOnly(true);
m_output->clear();
m_output->append(tr("Failed to create context"));
m_output->moveCursor(QTextCursor::Start);

#------------------------------------------------
# OpenGL
#------------------------------------------------
# QSurfaceFormat::OpenGLContextProfile
QSurfaceFormat::NoProfile
QSurfaceFormat::CoreProfile
QSurfaceFormat::CompatibilityProfile

# QSurfaceFormat::FormatOption
QSurfaceFormat::DeprecatedFunctions
QSurfaceFormat::DebugContext
QSurfaceFormat::StereoBuffers
QSurfaceFormat::FormatOption(0)

# QSurfaceFormat::RenderableType
QSurfaceFormat::DefaultRenderableType
QSurfaceFormat::OpenGL
QSurfaceFormat::OpenGLES

# QSurface
m_surface->format()

# QSurfaceFormat
fmt.setVersion(versions[idx].major, versions[idx].minor);
fmt.setProfile(profiles[i].profile);

format.majorVersion()
format.minorVersion()
format.profile()
format.testOption(options[i].option)
format.renderableType()
format.depthBufferSize()
format.stencilBufferSize()
format.samples()
format.redBufferSize()
format.greenBufferSize()
format.blueBufferSize()
format.alphaBufferSize()
format.swapInterval()

# QOpenGLContext
QOpenGLContext::currentContext();
context->functions();

# QOpenGLFunctions
f->glGetString(GL_VENDOR)
