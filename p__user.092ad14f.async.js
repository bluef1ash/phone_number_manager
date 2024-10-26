(self.webpackChunkphone_number_manager_frontend=self.webpackChunkphone_number_manager_frontend||[]).push([[532],{73141:function(M,p,a){"use strict";a.r(p);var h=a(77576),g=a(12028),F=a(34792),v=a(48086),t=a(39428),L=a(86582),m=a(3182),I=a(2824),U=a(44534),R=a(37201),S=a(7506),P=a(30859),O=a(72899),o=a(68393),T=a(64322),A=a(53776),Z=a(67294),f=a(85893),W=function(){var B=(0,A.t)("@@initialState"),y=B.initialState,K=(0,Z.useRef)(),w=(0,Z.useRef)(),j=(0,Z.useState)([]),C=(0,I.Z)(j,2),b=C[0],D=C[1];return(0,Z.useEffect)(function(){(0,m.Z)((0,t.Z)().mark(function u(){return(0,t.Z)().wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.t0=D,e.t1=[{label:"\u65E0",title:"\u65E0",value:"0"}],e.t2=L.Z,e.next=5,O.Z.api.queryCompanySelectList((0,T.uA)(y==null?void 0:y.currentUser));case 5:return e.t3=e.sent.data,e.t4=(0,e.t2)(e.t3),e.t5=e.t1.concat.call(e.t1,e.t4),e.abrupt("return",(0,e.t0)(e.t5));case 9:case"end":return e.stop()}},u)}))()},[]),(0,f.jsxs)(R.Z,{routes:[{path:"/welcome",breadcrumbName:"\u9996\u9875"},{path:"",breadcrumbName:"\u7CFB\u7EDF\u7BA1\u7406"},{path:"/system/user",breadcrumbName:"\u7CFB\u7EDF\u7528\u6237\u5217\u8868"}],children:[(0,f.jsx)(U.Z,{customActionRef:K,customRequest:function(){var u=(0,m.Z)((0,t.Z)().mark(function s(e){return(0,t.Z)().wrap(function(r){for(;;)switch(r.prev=r.next){case 0:return r.next=2,o.Z.api.querySystemUserList(e);case 2:return r.abrupt("return",r.sent);case 3:case"end":return r.stop()}},s)}));return function(s){return u.apply(this,arguments)}}(),customColumns:[{title:"\u7CFB\u7EDF\u7528\u6237\u540D\u79F0",dataIndex:"username",sorter:!0,ellipsis:!0},{title:"\u7CFB\u7EDF\u7528\u6237\u767B\u5F55\u65F6\u95F4",dataIndex:"loginTime",sorter:!0,valueType:"dateTime",ellipsis:!0,search:!1,render:function(s,e){return e.loginTime==="1000-01-01 00:00:00"?"\u672A\u767B\u5F55":e.loginTime}},{title:"\u7CFB\u7EDF\u7528\u6237\u767B\u5F55IP\u5730\u5740",dataIndex:"loginIp",sorter:!0,ellipsis:!0},{title:"\u7CFB\u7EDF\u7528\u6237\u662F\u5426\u88AB\u9501\u5B9A",dataIndex:"isLocked",sorter:!0,ellipsis:!0,render:function(s,e){return(0,f.jsx)(g.Z,{checked:e.isLocked,onChange:function(){var i=(0,m.Z)((0,t.Z)().mark(function r(n){var l,c,E,d;return(0,t.Z)().wrap(function(_){for(;;)switch(_.prev=_.next){case 0:return _.next=2,o.Z.api.patchSystemUser(e.id,{id:e.id,isLocked:n});case 2:l=_.sent,c=l.code,E=l.message,c===200?(e.isLocked=n,d="\u89E3\u9501",n&&(d="\u9501\u5B9A"),v.ZP.success(d+"\u6210\u529F\uFF01")):v.ZP.error(E);case 6:case"end":return _.stop()}},r)}));return function(r){return i.apply(this,arguments)}}()})},search:!1},{title:"\u7CFB\u7EDF\u7528\u6237\u662F\u5426\u542F\u7528",dataIndex:"isEnabled",sorter:!0,ellipsis:!0,render:function(s,e){return(0,f.jsx)(g.Z,{checked:e.isEnabled,onChange:function(){var i=(0,m.Z)((0,t.Z)().mark(function r(n){var l,c,E,d;return(0,t.Z)().wrap(function(_){for(;;)switch(_.prev=_.next){case 0:return _.next=2,o.Z.api.patchSystemUser(e.id,{id:e.id,isEnabled:n});case 2:l=_.sent,c=l.code,E=l.message,c===200?(d="\u7981\u7528",n&&(d="\u542F\u7528"),e.isEnabled=n,v.ZP.success(d+"\u6210\u529F\uFF01")):v.ZP.error(E);case 6:case"end":return _.stop()}},r)}));return function(r){return i.apply(this,arguments)}}()})},search:!1},{title:"\u7CFB\u7EDF\u7528\u6237\u6240\u5C5E\u5355\u4F4D",dataIndex:"companies",ellipsis:!0,sorter:!0,render:function(s,e){var i="\u65E0";return e.companies!==null&&typeof e.companies!="undefined"&&e.companies.length>0&&(i=e.companies.map(function(r){return r.name}).join("\uFF0C")),i},renderFormItem:function(){return(0,f.jsx)(S.Z,{querySelectList:function(){var s=(0,m.Z)((0,t.Z)().mark(function e(i){return(0,t.Z)().wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,O.Z.api.queryCompanySelectList([i]);case 2:return n.abrupt("return",n.sent.data);case 3:case"end":return n.stop()}},e)}));return function(e){return s.apply(this,arguments)}}(),selectList:b,setSelectList:D,cascaderFieldProps:{multiple:!0}})}}],isOptionButtons:!0,batchRemoveEventHandler:function(){var u=(0,m.Z)((0,t.Z)().mark(function s(e){return(0,t.Z)().wrap(function(r){for(;;)switch(r.prev=r.next){case 0:return r.next=2,o.Z.api.batchSystemUser({method:"DELETE",data:e});case 2:return r.abrupt("return",r.sent);case 3:case"end":return r.stop()}},s)}));return function(s){return u.apply(this,arguments)}}(),modalForm:{title:"\u7CFB\u7EDF\u7528\u6237",element:(0,f.jsx)(P.Z,{companySelectList:b,setCompanySelectList:D,isCreate:!0}),formRef:w,onCreateFinish:function(){var u=(0,m.Z)((0,t.Z)().mark(function e(i){return(0,t.Z)().wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,o.Z.api.createSystemUser((0,P.X)(i));case 2:return n.abrupt("return",n.sent);case 3:case"end":return n.stop()}},e)}));function s(e){return u.apply(this,arguments)}return s}(),onModifyFinish:function(){var u=(0,m.Z)((0,t.Z)().mark(function e(i){return(0,t.Z)().wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,o.Z.api.modifySystemUser(i.id,(0,P.X)(i));case 2:return n.abrupt("return",n.sent);case 3:case"end":return n.stop()}},e)}));function s(e){return u.apply(this,arguments)}return s}(),queryData:function(){var u=(0,m.Z)((0,t.Z)().mark(function e(i){var r;return(0,t.Z)().wrap(function(l){for(;;)switch(l.prev=l.next){case 0:return l.next=2,o.Z.api.querySystemUser(i);case 2:return r=l.sent,typeof r.data.companies!="undefined"&&r.data.companies!==null&&r.data.companies.length>0?r.data.companyIds=r.data.companies.map(function(c){return[c.id]}):r.data.companyIds=[["0"]],l.abrupt("return",r);case 5:case"end":return l.stop()}},e)}));function s(e){return u.apply(this,arguments)}return s}()},removeData:function(){var u=(0,m.Z)((0,t.Z)().mark(function s(e){return(0,t.Z)().wrap(function(r){for(;;)switch(r.prev=r.next){case 0:return r.next=2,o.Z.api.removeSystemUser(e);case 2:return r.abrupt("return",r.sent);case 3:case"end":return r.stop()}},s)}));return function(s){return u.apply(this,arguments)}}()})," "]})};p.default=W},72899:function(M,p,a){"use strict";var h=a(73387);p.Z={api:h}},68393:function(M,p,a){"use strict";var h=a(14695);p.Z={api:h}}}]);
