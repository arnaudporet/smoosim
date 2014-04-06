#Copyright (c) 2013, Arnaud Poret
#All rights reserved.

#run("~/kali-sim/working_example/BIOMD0000000049/BIOMD0000000049.m")

clear all
clc
addpath("~/kali-sim/lib/")
graphics_toolkit("gnuplot")

kmax=50;
repeat=5;

edge_label={"EGF__EGF","NGF__NGF","EGF__EGFR","EGFR__EGFR","NGF__TrkA","EGFR__Shc","TrkA__Shc","EGFR__FRS2","TrkA__FRS2","EGFR__Dok","TrkA__Dok","Shc__Grb2","FRS2__Crk","Dok__RasGAP","Grb2__SOS","ERK__SOS","Crk__C3G","SOS__Ras","RasGAP__Ras","C3G__Rap1","Rap1GAP__Rap1","Rap1GAP__Rap1GAP","Ras__cRaf","Rap1__BRaf","Ras__BRaf","cRaf__MEK","BRaf__MEK","PP2A__MEK","PP2A__PP2A","MEK__ERK","MKP3__ERK","MKP3__MKP3"};
node_label={"EGF","NGF","EGFR","TrkA","Shc","FRS2","Dok","Grb2","Crk","RasGAP","SOS","C3G","Ras","Rap1","Rap1GAP","cRaf","BRaf","MEK","PP2A","ERK","MKP3"};
plot_label=node_label;

#full: 4 (=1)
#much: 3 (2/3<=,<=1)
#some: 2 (1/3<=,<=2/3)
#few: 1 (0<=,<=1/3)
#off: 0 (=0)
#undetermined: -1 (0<=,<=1)
node0=[
4;#EGF
0;#NGF
0;#EGFR
0;#TrkA
0;#Shc
0;#FRS2
0;#Dok
0;#Grb2
0;#Crk
0;#RasGAP
0;#SOS
0;#C3G
0;#Ras
0;#Rap1
0;#Rap1GAP
0;#cRaf
0;#BRaf
0;#MEK
0;#PP2A
0;#ERK
0#MKP3
];

#fast: 3 (2/3<=,<=1)
#normal: 2 (1/3<=,<=2/3)
#slow: 1 (0<=,<=1/3)
#undetermined: -1 (0<=,<=1)
p=[
2;#EGF__EGF
2;#NGF__NGF
2;#EGF__EGFR
2;#EGFR__EGFR
2;#NGF__TrkA
2;#EGFR__Shc
2;#TrkA__Shc
2;#EGFR__FRS2
2;#TrkA__FRS2
2;#EGFR__Dok
2;#TrkA__Dok
2;#Shc__Grb2
2;#FRS2__Crk
2;#Dok__RasGAP
2;#Grb2__SOS
2;#ERK__SOS
2;#Crk__C3G
2;#SOS__Ras
2;#RasGAP__Ras
2;#C3G__Rap1
2;#Rap1GAP__Rap1
2;#Rap1GAP__Rap1GAP
2;#Ras__cRaf
2;#Rap1__BRaf
2;#Ras__BRaf
2;#cRaf__MEK
2;#BRaf__MEK
2;#PP2A__MEK
2;#PP2A__PP2A
2;#MEK__ERK
2;#MKP3__ERK
2#MKP3__MKP3
];

#strong: 4 (=1)
#normal: 3 (2/3<=,<=1)
#weaker: 2 (1/3<=,<=2/3)
#weakest: 1 (0<=,<=1/3)
#down: 0 (=0)
#undetermined: -1 (0<=,<=1)
q=[
4;#EGF__EGF
4;#NGF__NGF
4;#EGF__EGFR
0;#EGFR__EGFR XXX
4;#NGF__TrkA
4;#EGFR__Shc
4;#TrkA__Shc
4;#EGFR__FRS2
4;#TrkA__FRS2
4;#EGFR__Dok
4;#TrkA__Dok
4;#Shc__Grb2
4;#FRS2__Crk
4;#Dok__RasGAP
4;#Grb2__SOS
4;#ERK__SOS
4;#Crk__C3G
4;#SOS__Ras
4;#RasGAP__Ras
4;#C3G__Rap1
4;#Rap1GAP__Rap1
4;#Rap1GAP__Rap1GAP
4;#Ras__cRaf
4;#Rap1__BRaf
4;#Ras__BRaf
4;#cRaf__MEK
4;#BRaf__MEK
4;#PP2A__MEK
4;#PP2A__PP2A
4;#MEK__ERK
4;#MKP3__ERK
4#MKP3__MKP3
];

function y=fedge(node,k)
    y=[
    node(1,k);#EGF__EGF
    node(2,k);#NGF__NGF
    node(1,k);#EGF__EGFR
    node(3,k);#EGFR__EGFR
    node(2,k);#NGF__TrkA
    node(3,k);#EGFR__Shc
    node(4,k);#TrkA__Shc
    node(3,k);#EGFR__FRS2
    node(4,k);#TrkA__FRS2
    node(3,k);#EGFR__Dok
    node(4,k);#TrkA__Dok
    node(5,k);#Shc__Grb2
    node(6,k);#FRS2__Crk
    node(7,k);#Dok__RasGAP
    node(8,k);#Grb2__SOS
    node(20,k);#ERK__SOS
    node(9,k);#Crk__C3G
    node(11,k);#SOS__Ras
    node(10,k);#RasGAP__Ras
    node(12,k);#C3G__Rap1
    node(15,k);#Rap1GAP__Rap1
    node(15,k);#Rap1GAP__Rap1GAP
    node(13,k);#Ras__cRaf
    node(14,k);#Rap1__BRaf
    node(13,k);#Ras__BRaf
    node(16,k);#cRaf__MEK
    node(17,k);#BRaf__MEK
    node(19,k);#PP2A__MEK
    node(19,k);#PP2A__PP2A
    node(18,k);#MEK__ERK
    node(21,k);#MKP3__ERK
    node(21,k)#MKP3__MKP3
    ];
endfunction

function y=fnode(edge,k)
    y=[
    edge(1,k);#EGF
    edge(2,k);#NGF
    AND(edge(3,k),NOT(edge(4,k)));#EGFR
    edge(5,k);#TrkA
    OR(edge(6,k),edge(7,k));#Shc
    OR(edge(8,k),edge(9,k));#FRS2
    OR(edge(10,k),edge(11,k));#Dok
    edge(12,k);#Grb2
    edge(13,k);#Crk
    edge(14,k);#RasGAP
    AND(edge(15,k),NOT(edge(16,k)));#SOS
    edge(17,k);#C3G
    AND(edge(18,k),NOT(edge(19,k)));#Ras
    AND(edge(20,k),NOT(edge(21,k)));#Rap1
    edge(22,k);#Rap1GAP
    edge(23,k);#cRaf
    OR(edge(24,k),edge(25,k));#BRaf
    AND(OR(edge(26,k),edge(27,k)),NOT(edge(28,k)));#MEK
    edge(29,k);#PP2A
    AND(edge(30,k),NOT(edge(31,k)));#ERK
    edge(32,k)#MKP3
    ];
endfunction

[edge,node]=go("fedge","fnode",node0,kmax,p,q,repeat,plot_label);
