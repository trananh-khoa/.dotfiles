"use strict";var i=Object.defineProperty;var m=Object.getOwnPropertyDescriptor;var r=Object.getOwnPropertyNames;var s=Object.prototype.hasOwnProperty;var d=(n,o)=>{for(var t in o)i(n,t,{get:o[t],enumerable:!0})},f=(n,o,t,l)=>{if(o&&typeof o=="object"||typeof o=="function")for(let a of r(o))!s.call(n,a)&&a!==t&&i(n,a,{get:()=>o[a],enumerable:!(l=m(o,a))||l.enumerable});return n};var p=n=>f(i({},"__esModule",{value:!0}),n);var u={};d(u,{default:()=>c});module.exports=p(u);var e=require("@raycast/api");async function c(){let n="cleanshot://all-in-one";await(0,e.closeMainWindow)(),(0,e.open)(n)}
