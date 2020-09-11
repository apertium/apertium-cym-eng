#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.


AC_PREREQ(2.52)

AC_INIT([Apertium Welsh-English], [0.1.1], [ftyers@users.sourceforge.net], [apertium-cym-eng], [http://wiki.apertium.org/wiki/Apertium-cym-eng])
AM_INIT_AUTOMAKE([apertium-cym-eng], [0.1.1], no-define)

AC_PROG_LN_S
AC_PROG_AWK

AC_CONFIG_HEADER([config])

m4_define([required_apertium_version], [3.4.0])
PKG_CHECK_MODULES(APERTIUM,   apertium >= required_apertium_version, [], [PKG_CHECK_MODULES(APERTIUM,   apertium >= required_apertium_version)])

AC_PATH_PROG([CGCOMP], [cg-comp], [false], [$PATH$PATH_SEPARATOR$with_cg_comp/bin])
AS_IF([test x$CGCOMP = xfalse], [AC_MSG_ERROR([You don't have cg-comp installed])])

AC_PATH_PROG([CGPROC], [cg-proc], [false], [$PATH$PATH_SEPARATOR$with_cg_proc/bin])
AS_IF([test x$CGPROC = xfalse], [AC_MSG_ERROR([You don't have cg-proc installed])])

PKG_CHECK_MODULES(APERTIUM_RECURSIVE, apertium-recursive >= 0.0.1)

AC_PATH_PROGS(ZCAT, [gzcat zcat], [false])
AS_IF([test x$ZCAT = xfalse], [AC_MSG_ERROR([You don't have zcat nor gzcat installed])])

m4_ifdef([AP_CHECK_LING],[],[AC_MSG_ERROR([AP_CHECK_LING not defined, is apertium.m4 in ACLOCAL_PATH? See: http://wiki.apertium.org/wiki/Installation_troubleshooting])])

AP_CHECK_LING([1], [apertium-cym])
AP_CHECK_LING([2], [apertium-eng])

AP_MKINCLUDE

AC_OUTPUT([Makefile])
