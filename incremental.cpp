struct foo
{
    int X;
    int Y;
    int Z;
#if MEMBER0
    int Member0;
#endif
#if MEMBER1
    int Member1;
#endif
#if MEMBER2
    int Member2;
#endif
#if MEMBER3
    int Member3;
#endif
#if MEMBER4
    int Member4;
#endif
#if MEMBER5
    int Member5;
#endif
#if MEMBER6
    int Member6;
#endif
#if MEMBER7
    int Member7;
#endif
#if MEMBER8
    int Member8;
#endif
    // NOTE(casey): These is intentionally no MEMBER9, so that there is a "no additional member" iteration
};

extern "C" void WinMainCRTStartup()
{
    foo Foo = {};
}
