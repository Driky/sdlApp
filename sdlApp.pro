TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -std=c++11

LIBS += -L$$PWD/../../../../../usr/lib/fglrx/ -lGL
INCLUDEPATH += $$PWD/../../../../../usr/lib/fglrx
DEPENDPATH += $$PWD/../../../../../usr/lib/fglrx

LIBS += -L$$PWD/../../../../../usr/lib/x86_64-linux-gnu/ -lGLU
INCLUDEPATH += $$PWD/../../../../../usr/include/GL
DEPENDPATH += $$PWD/../../../../../usr/include/GL

LIBS += -L$$PWD/../../../../../usr/lib64/ -lGLEW
INCLUDEPATH += $$PWD/../../../../../usr/include/GL
DEPENDPATH += $$PWD/../../../../../usr/include/GL

LIBS += -L /usr/local/lib -lSDL2 -lSDL2_image
INCLUDEPATH += /usr/local/include/SDL2

SOURCES += \
    Shader.cpp \
    main.cpp \
    SceneOpenGL.cpp

HEADERS += \
    Shader.h \
    SceneOpenGL.h

OTHER_FILES += \
    Shaders/basique2D.frag \
    Shaders/couleur2D.frag \
    Shaders/couleur3D.frag \
    Shaders/texture.frag \
    Shaders/basique2D.vert \
    Shaders/couleur2D.vert \
    Shaders/couleur3D.vert \
    Shaders/texture.vert
