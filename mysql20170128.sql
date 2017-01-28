/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/1/13 18:08:47                           */
/*==============================================================*/


drop table if exists t_dd_datadictionary;

drop table if exists t_dd_datadictionarytype;

drop table if exists t_opt_operation;

drop table if exists t_qt_Answerthequestion;

drop table if exists t_qt_answer;

drop table if exists t_qt_option;

drop table if exists t_qt_optionrelation;

drop table if exists t_qt_questionVideoslice;

drop table if exists t_qt_questionsentence;

drop table if exists t_qt_sentence;

drop table if exists t_rpt_Videoslice;

drop table if exists t_rs_Videoslice;

drop table if exists t_rs_season;

drop table if exists t_rs_set;

drop table if exists t_rs_tvplay;

drop table if exists t_u_comment;

drop table if exists t_u_user;

/*==============================================================*/
/* Table: t_dd_datadictionary                                   */
/*==============================================================*/
create table t_dd_datadictionary
(
   dd_id                char(20) not null comment '字典id',
   dd_name              char(100) comment '字典名称',
   ddt_id               char(20) comment '字典类型id',
   dd_comment           char(100) comment '备注',
   primary key (dd_id)
);

alter table t_dd_datadictionary comment '数据字典';

/*==============================================================*/
/* Table: t_dd_datadictionarytype                               */
/*==============================================================*/
create table t_dd_datadictionarytype
(
   ddt_id               char(20) not null comment '字典类型id',
   ddt_name             char(100) comment '字典类型名称',
   ddt_comment          char(100) comment '备注',
   primary key (ddt_id)
);

alter table t_dd_datadictionarytype comment '数据字典类型';

/*==============================================================*/
/* Table: t_opt_operation                                       */
/*==============================================================*/
create table t_opt_operation
(
   id                   char(20) comment 'id',
   user_id              char(20) comment '用户id',
   operation_time       timestamp comment '时间戳',
   operation_type       char(20) comment '操作类型',
   operation_content    varchar(1000) comment '操作内容'
);

alter table t_opt_operation comment '操作内容';

/*==============================================================*/
/* Table: t_qt_Answerthequestion                                */
/*==============================================================*/
create table t_qt_Answerthequestion
(
   atq_id               char(20) not null comment '回答记录id',
   user_id              char(20) comment '用户id',
   stc_vs_id            char(20) comment '切片/句子题目id',
   as_content           char(100) comment '答案',
   ifcorrect            int comment '是否正确',
   as_date              timestamp comment '答题时间',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (atq_id)
);

alter table t_qt_Answerthequestion comment '答题记录';

/*==============================================================*/
/* Table: t_qt_answer                                           */
/*==============================================================*/
create table t_qt_answer
(
   as_id                char(20) not null comment '答案id',
   as_content           char(100) comment '答案',
   comment              char(200) comment '备注',
   stc_vs_id            char(20) comment '切片/句子id',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (as_id)
);

alter table t_qt_answer comment '参考答案表';

/*==============================================================*/
/* Table: t_qt_option                                           */
/*==============================================================*/
create table t_qt_option
(
   ot_id                char(20) not null comment '选项id',
   ot_name              char(100) comment '选项内容',
   ot_fullname          char(100) comment '选项全内容',
   pot_id               char(20) comment '父选项id',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (ot_id)
);

alter table t_qt_option comment '选项';

/*==============================================================*/
/* Table: t_qt_optionrelation                                   */
/*==============================================================*/
create table t_qt_optionrelation
(
   ot_id                char(20) not null comment '选项ID',
   qt_id                char(20) not null comment '题目id',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (ot_id, qt_id)
);

alter table t_qt_optionrelation comment '题目选项关系表';

/*==============================================================*/
/* Table: t_qt_questionVideoslice                               */
/*==============================================================*/
create table t_qt_questionVideoslice
(
   qt_id                char(20) not null comment '题目id',
   vs_id                char(20) comment '切片id',
   qt_ename             char(100) comment '题目内容',
   qt_cname             char(100) comment '题目中文翻译',
   qt_type              char(20) comment '题型',
   refer_content        char(20) comment '参考',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (qt_id)
);

alter table t_qt_questionVideoslice comment '切片题目表';

/*==============================================================*/
/* Table: t_qt_questionsentence                                 */
/*==============================================================*/
create table t_qt_questionsentence
(
   qt_id                char(20) not null comment '题目id',
   qt_ename             char(100) comment '题目内容',
   qt_cname             char(100) comment '题目中文翻译',
   qt_type              char(20) comment '题型',
   stc_id               char(20) comment '句子id',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (qt_id)
);

alter table t_qt_questionsentence comment '句子题目表';

/*==============================================================*/
/* Table: t_qt_sentence                                         */
/*==============================================================*/
create table t_qt_sentence
(
   stc_id               char(20) not null comment '句子id',
   stc_ename            char(100) comment '句子英文内容',
   stc_cname            char(100) comment '句子中文翻译',
   stc_begindate        time comment '句子开始时间',
   stc_enddate          time comment '句子结束时间',
   grammar              char(20) comment '语法',
   difficulty           char(20) comment '难度',
   Difficult_reason     char(20) comment '难度原因',
   ba_logic             char(20) comment '前后逻辑',
   laststc_id           char(20) comment '上一句子id',
   nextstc_id           char(20) comment '下一句子id',
   vs_id                char(20) comment '切片id',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (stc_id)
);

alter table t_qt_sentence comment '字幕表';

/*==============================================================*/
/* Table: t_rpt_Videoslice                                      */
/*==============================================================*/
create table t_rpt_Videoslice
(
   
   vs_id                char(20) comment '切片id',
   dtdate               date comment '日期',
   click_num            int comment '点击量',
   comment_num          int comment '评论量',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5'
);

alter table t_rpt_Videoslice comment '视频切片统计';

/*==============================================================*/
/* Table: t_rs_Videoslice                                       */
/*==============================================================*/
create table t_rs_Videoslice
(
   vs_id                char(20) not null comment '切片id',
   vs_cname             char(20) comment '切片中文名称',
   vs_ename             char(20) comment '切片英文名称',
   vs_Videoslice        blob comment '切片视频',
   vs_begintime         time comment '切片开始时间',
   vs_endtime           time comment '切片结束时间',
   Content_type         char(20) comment '内容类别',
   people_relation      char(20) comment '人物关系',
   Background_theme     char(20) comment '背景主旨',
   Logical_process      char(20) comment '逻辑过程',
   mood                 char(20) comment '人物情绪',
   Dialogue_site        char(20) comment '对话地点',
   pronunciation        char(20) comment '发音',
   speed                char(20) comment '语速',
   vocabulary           char(20) comment '词汇量',
   difficulty           char(20) comment '难度',
   stc_nums             int comment '句子数',
   vs_instruction       varchar(1000) comment '剧情简述',
   lastvs_id            char(20) comment '上一切片id',
   nextvs_id            char(20) comment '下一切片id',
   st_id                char(20) comment '集id',
   Et_author            char(20) comment '录入作者',
   Et_btime             timestamp comment '录入开始时间',
   Et_etime             timestamp comment '录入结束时间',
   Et_typeid            int comment '录入状态',
   Et_instruction       varchar(1000) comment '录入说明',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (vs_id)
);

alter table t_rs_Videoslice comment '视频切片信息表';

/*==============================================================*/
/* Table: t_rs_season                                           */
/*==============================================================*/
create table t_rs_season
(
   ss_id                char(20) not null comment '季',
   ss_cname             char(100) comment '季中文名称',
   ss_ename             char(100) comment '季英文名称',
   ss_instruction       varchar(1000) comment '剧情简述',
   lastss_id            char(20) comment '上一季id',
   nextss_id            char(20) comment '下一季id',
   st_nums              int comment '集数',
   tv_id                char(20) comment '电视剧id',
   Et_author            char(20) comment '录入作者',
   Et_btime             timestamp comment '录入开始时间',
   Et_etime             timestamp comment '录入结束时间',
   Et_typeid            int comment '录入状态',
   Et_instruction       varchar(1000) comment '录入说明',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (ss_id)
);

alter table t_rs_season comment '季信息表';

/*==============================================================*/
/* Table: t_rs_set                                              */
/*==============================================================*/
create table t_rs_set
(
   st_id                char(20) not null comment '集id',
   st_cname             char(100) comment '集中文名称',
   st_ename             char(100) comment '集英文名称',
   ss_instruction       varchar(1000) comment '剧情简述',
   lastst_id            char(20) comment '上一集id',
   nextst_id            char(20) comment '下一集id',
   vs_nums              char(20) comment '切片数',
   ss_id                char(20) comment '季',
   Et_author            char(20) comment '录入作者',
   Et_btime             timestamp comment '录入开始时间',
   Et_etime             timestamp comment '录入结束时间',
   Et_typeid            int comment '录入状态',
   Et_instruction       varchar(1000) comment '录入说明',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (st_id)
);

alter table t_rs_set comment '集信息表';

/*==============================================================*/
/* Table: t_rs_tvplay                                           */
/*==============================================================*/
create table t_rs_tvplay
(
   tv_id                char(20) not null comment '电视剧id',
   tv_name              char(100) comment '电视剧名称',
   tv_ename             char(100) comment '电视剧英文名称',
   tv_instruction       varchar(1000) comment '剧情简述',
   ss_nums              int comment '季数',
   st_nums              int comment '集数',
   type_id              char(20) comment '类型',
   at_typeid            char(20) comment '艺术类型',
   mc_id                char(20) comment '主人物关系',
   bgd_id               char(20) comment '背景难度',
   Et_author            char(20) comment '录入作者',
   Et_btime             timestamp comment '录入开始时间',
   Et_etime             timestamp comment '录入结束时间',
   Et_typeid            int comment '录入状态',
   Et_instruction       varchar(1000) comment '录入说明',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   primary key (tv_id)
);

alter table t_rs_tvplay comment '电视剧信息表';

/*==============================================================*/
/* Table: t_u_comment                                           */
/*==============================================================*/
create table t_u_comment
(
   comment_id           char(20) not null comment '评论id',
   user_id              char(20) comment '用户id',
   vs_id                char(20) comment '切片id',
   lastcomment_id       char(20) comment '上一评论id',
   nextcomment_id       char(20) comment '下一评论id',
   comment_content      varchar(1000) comment '评论内容',
   primary key (comment_id)
);

alter table t_u_comment comment '用户评论';

/*==============================================================*/
/* Table: t_u_user                                              */
/*==============================================================*/
create table t_u_user
(
   user_id              char(20) not null comment '用户id',
   user_password        char(20) comment '用户密码',
   user_name            char(20) comment '用户名',
   user_tel             char(20) comment '手机号码',
   user_age             int comment '年龄',
   user_gender          int comment '性别',
   user_email           char(100) comment '邮箱',
   extend_1             char(20) comment '备用字段1',
   extend_2             char(20) comment '备用字段2',
   extend_3             char(20) comment '备用字段3',
   extend_4             char(20) comment '备用字段4',
   extend_5             char(20) comment '备用字段5',
   extend_6             char(20) comment '备用字段6',
   extend_7             char(20) comment '备用字段7',
   extend_8             char(20) comment '备用字段8',
   extend_9             char(20) comment '备用字段9',
   extend_10            char(20) comment '备用字段10',
   primary key (user_id)
);

alter table t_u_user comment '用户信息表';

alter table t_dd_datadictionary add constraint FK_fk_dd_id foreign key (ddt_id)
      references t_dd_datadictionarytype (ddt_id) on delete restrict on update restrict;

alter table t_qt_Answerthequestion add constraint FK_fk_user_id2 foreign key (user_id)
      references t_u_user (user_id) on delete restrict on update restrict;

alter table t_qt_optionrelation add constraint FK_fk_ot_id foreign key (ot_id)
      references t_qt_option (ot_id) on delete restrict on update restrict;

alter table t_qt_optionrelation add constraint FK_fk_qt_id foreign key (qt_id)
      references t_qt_questionsentence (qt_id) on delete restrict on update restrict;

alter table t_qt_questionVideoslice add constraint FK_fk_vs_id1 foreign key (vs_id)
      references t_rs_Videoslice (vs_id) on delete restrict on update restrict;

alter table t_qt_questionsentence add constraint FK_fk_stc_id foreign key (stc_id)
      references t_qt_sentence (stc_id) on delete restrict on update restrict;

alter table t_qt_sentence add constraint FK_fk_vs_id foreign key (vs_id)
      references t_rs_Videoslice (vs_id) on delete restrict on update restrict;

alter table t_rs_Videoslice add constraint FK_fk_st_id foreign key (st_id)
      references t_rs_set (st_id) on delete restrict on update restrict;

alter table t_rs_season add constraint FK_fk_tv_id foreign key (tv_id)
      references t_rs_tvplay (tv_id) on delete restrict on update restrict;

alter table t_rs_set add constraint FK_fk_ss_id foreign key (ss_id)
      references t_rs_season (ss_id) on delete restrict on update restrict;

alter table t_u_comment add constraint FK_fk_user_id foreign key (user_id)
      references t_u_user (user_id) on delete restrict on update restrict;

alter table t_u_comment add constraint FK_fk_vs_id2 foreign key (vs_id)
      references t_rs_Videoslice (vs_id) on delete restrict on update restrict;

