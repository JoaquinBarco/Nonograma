:- module(app_init, 
	[]).
:- use_module(library(pengines)).

:- pengine_application(init).
:- use_module(init:init).