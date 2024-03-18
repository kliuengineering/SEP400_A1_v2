#ifndef __LOGGER_H__
#define __LOGGER_H__

enum LOG_LEVEL
{
    DEBUG,
    WARNING,
    ERROR,
    CRITICAL
};

int InitializeLog(void);
void SetLogLevel(LOG_LEVEL);
void Log(LOG_LEVEL, const char *, const char *, int, const char *);
void ExitLog(void);

#endif