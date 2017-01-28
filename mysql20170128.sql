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
   dd_id                char(20) not null comment '�ֵ�id',
   dd_name              char(100) comment '�ֵ�����',
   ddt_id               char(20) comment '�ֵ�����id',
   dd_comment           char(100) comment '��ע',
   primary key (dd_id)
);

alter table t_dd_datadictionary comment '�����ֵ�';

/*==============================================================*/
/* Table: t_dd_datadictionarytype                               */
/*==============================================================*/
create table t_dd_datadictionarytype
(
   ddt_id               char(20) not null comment '�ֵ�����id',
   ddt_name             char(100) comment '�ֵ���������',
   ddt_comment          char(100) comment '��ע',
   primary key (ddt_id)
);

alter table t_dd_datadictionarytype comment '�����ֵ�����';

/*==============================================================*/
/* Table: t_opt_operation                                       */
/*==============================================================*/
create table t_opt_operation
(
   id                   char(20) comment 'id',
   user_id              char(20) comment '�û�id',
   operation_time       timestamp comment 'ʱ���',
   operation_type       char(20) comment '��������',
   operation_content    varchar(1000) comment '��������'
);

alter table t_opt_operation comment '��������';

/*==============================================================*/
/* Table: t_qt_Answerthequestion                                */
/*==============================================================*/
create table t_qt_Answerthequestion
(
   atq_id               char(20) not null comment '�ش��¼id',
   user_id              char(20) comment '�û�id',
   stc_vs_id            char(20) comment '��Ƭ/������Ŀid',
   as_content           char(100) comment '��',
   ifcorrect            int comment '�Ƿ���ȷ',
   as_date              timestamp comment '����ʱ��',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (atq_id)
);

alter table t_qt_Answerthequestion comment '�����¼';

/*==============================================================*/
/* Table: t_qt_answer                                           */
/*==============================================================*/
create table t_qt_answer
(
   as_id                char(20) not null comment '��id',
   as_content           char(100) comment '��',
   comment              char(200) comment '��ע',
   stc_vs_id            char(20) comment '��Ƭ/����id',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (as_id)
);

alter table t_qt_answer comment '�ο��𰸱�';

/*==============================================================*/
/* Table: t_qt_option                                           */
/*==============================================================*/
create table t_qt_option
(
   ot_id                char(20) not null comment 'ѡ��id',
   ot_name              char(100) comment 'ѡ������',
   ot_fullname          char(100) comment 'ѡ��ȫ����',
   pot_id               char(20) comment '��ѡ��id',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (ot_id)
);

alter table t_qt_option comment 'ѡ��';

/*==============================================================*/
/* Table: t_qt_optionrelation                                   */
/*==============================================================*/
create table t_qt_optionrelation
(
   ot_id                char(20) not null comment 'ѡ��ID',
   qt_id                char(20) not null comment '��Ŀid',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (ot_id, qt_id)
);

alter table t_qt_optionrelation comment '��Ŀѡ���ϵ��';

/*==============================================================*/
/* Table: t_qt_questionVideoslice                               */
/*==============================================================*/
create table t_qt_questionVideoslice
(
   qt_id                char(20) not null comment '��Ŀid',
   vs_id                char(20) comment '��Ƭid',
   qt_ename             char(100) comment '��Ŀ����',
   qt_cname             char(100) comment '��Ŀ���ķ���',
   qt_type              char(20) comment '����',
   refer_content        char(20) comment '�ο�',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (qt_id)
);

alter table t_qt_questionVideoslice comment '��Ƭ��Ŀ��';

/*==============================================================*/
/* Table: t_qt_questionsentence                                 */
/*==============================================================*/
create table t_qt_questionsentence
(
   qt_id                char(20) not null comment '��Ŀid',
   qt_ename             char(100) comment '��Ŀ����',
   qt_cname             char(100) comment '��Ŀ���ķ���',
   qt_type              char(20) comment '����',
   stc_id               char(20) comment '����id',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (qt_id)
);

alter table t_qt_questionsentence comment '������Ŀ��';

/*==============================================================*/
/* Table: t_qt_sentence                                         */
/*==============================================================*/
create table t_qt_sentence
(
   stc_id               char(20) not null comment '����id',
   stc_ename            char(100) comment '����Ӣ������',
   stc_cname            char(100) comment '�������ķ���',
   stc_begindate        time comment '���ӿ�ʼʱ��',
   stc_enddate          time comment '���ӽ���ʱ��',
   grammar              char(20) comment '�﷨',
   difficulty           char(20) comment '�Ѷ�',
   Difficult_reason     char(20) comment '�Ѷ�ԭ��',
   ba_logic             char(20) comment 'ǰ���߼�',
   laststc_id           char(20) comment '��һ����id',
   nextstc_id           char(20) comment '��һ����id',
   vs_id                char(20) comment '��Ƭid',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (stc_id)
);

alter table t_qt_sentence comment '��Ļ��';

/*==============================================================*/
/* Table: t_rpt_Videoslice                                      */
/*==============================================================*/
create table t_rpt_Videoslice
(
   
   vs_id                char(20) comment '��Ƭid',
   dtdate               date comment '����',
   click_num            int comment '�����',
   comment_num          int comment '������',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5'
);

alter table t_rpt_Videoslice comment '��Ƶ��Ƭͳ��';

/*==============================================================*/
/* Table: t_rs_Videoslice                                       */
/*==============================================================*/
create table t_rs_Videoslice
(
   vs_id                char(20) not null comment '��Ƭid',
   vs_cname             char(20) comment '��Ƭ��������',
   vs_ename             char(20) comment '��ƬӢ������',
   vs_Videoslice        blob comment '��Ƭ��Ƶ',
   vs_begintime         time comment '��Ƭ��ʼʱ��',
   vs_endtime           time comment '��Ƭ����ʱ��',
   Content_type         char(20) comment '�������',
   people_relation      char(20) comment '�����ϵ',
   Background_theme     char(20) comment '������ּ',
   Logical_process      char(20) comment '�߼�����',
   mood                 char(20) comment '��������',
   Dialogue_site        char(20) comment '�Ի��ص�',
   pronunciation        char(20) comment '����',
   speed                char(20) comment '����',
   vocabulary           char(20) comment '�ʻ���',
   difficulty           char(20) comment '�Ѷ�',
   stc_nums             int comment '������',
   vs_instruction       varchar(1000) comment '�������',
   lastvs_id            char(20) comment '��һ��Ƭid',
   nextvs_id            char(20) comment '��һ��Ƭid',
   st_id                char(20) comment '��id',
   Et_author            char(20) comment '¼������',
   Et_btime             timestamp comment '¼�뿪ʼʱ��',
   Et_etime             timestamp comment '¼�����ʱ��',
   Et_typeid            int comment '¼��״̬',
   Et_instruction       varchar(1000) comment '¼��˵��',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (vs_id)
);

alter table t_rs_Videoslice comment '��Ƶ��Ƭ��Ϣ��';

/*==============================================================*/
/* Table: t_rs_season                                           */
/*==============================================================*/
create table t_rs_season
(
   ss_id                char(20) not null comment '��',
   ss_cname             char(100) comment '����������',
   ss_ename             char(100) comment '��Ӣ������',
   ss_instruction       varchar(1000) comment '�������',
   lastss_id            char(20) comment '��һ��id',
   nextss_id            char(20) comment '��һ��id',
   st_nums              int comment '����',
   tv_id                char(20) comment '���Ӿ�id',
   Et_author            char(20) comment '¼������',
   Et_btime             timestamp comment '¼�뿪ʼʱ��',
   Et_etime             timestamp comment '¼�����ʱ��',
   Et_typeid            int comment '¼��״̬',
   Et_instruction       varchar(1000) comment '¼��˵��',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (ss_id)
);

alter table t_rs_season comment '����Ϣ��';

/*==============================================================*/
/* Table: t_rs_set                                              */
/*==============================================================*/
create table t_rs_set
(
   st_id                char(20) not null comment '��id',
   st_cname             char(100) comment '����������',
   st_ename             char(100) comment '��Ӣ������',
   ss_instruction       varchar(1000) comment '�������',
   lastst_id            char(20) comment '��һ��id',
   nextst_id            char(20) comment '��һ��id',
   vs_nums              char(20) comment '��Ƭ��',
   ss_id                char(20) comment '��',
   Et_author            char(20) comment '¼������',
   Et_btime             timestamp comment '¼�뿪ʼʱ��',
   Et_etime             timestamp comment '¼�����ʱ��',
   Et_typeid            int comment '¼��״̬',
   Et_instruction       varchar(1000) comment '¼��˵��',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (st_id)
);

alter table t_rs_set comment '����Ϣ��';

/*==============================================================*/
/* Table: t_rs_tvplay                                           */
/*==============================================================*/
create table t_rs_tvplay
(
   tv_id                char(20) not null comment '���Ӿ�id',
   tv_name              char(100) comment '���Ӿ�����',
   tv_ename             char(100) comment '���Ӿ�Ӣ������',
   tv_instruction       varchar(1000) comment '�������',
   ss_nums              int comment '����',
   st_nums              int comment '����',
   type_id              char(20) comment '����',
   at_typeid            char(20) comment '��������',
   mc_id                char(20) comment '�������ϵ',
   bgd_id               char(20) comment '�����Ѷ�',
   Et_author            char(20) comment '¼������',
   Et_btime             timestamp comment '¼�뿪ʼʱ��',
   Et_etime             timestamp comment '¼�����ʱ��',
   Et_typeid            int comment '¼��״̬',
   Et_instruction       varchar(1000) comment '¼��˵��',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   primary key (tv_id)
);

alter table t_rs_tvplay comment '���Ӿ���Ϣ��';

/*==============================================================*/
/* Table: t_u_comment                                           */
/*==============================================================*/
create table t_u_comment
(
   comment_id           char(20) not null comment '����id',
   user_id              char(20) comment '�û�id',
   vs_id                char(20) comment '��Ƭid',
   lastcomment_id       char(20) comment '��һ����id',
   nextcomment_id       char(20) comment '��һ����id',
   comment_content      varchar(1000) comment '��������',
   primary key (comment_id)
);

alter table t_u_comment comment '�û�����';

/*==============================================================*/
/* Table: t_u_user                                              */
/*==============================================================*/
create table t_u_user
(
   user_id              char(20) not null comment '�û�id',
   user_password        char(20) comment '�û�����',
   user_name            char(20) comment '�û���',
   user_tel             char(20) comment '�ֻ�����',
   user_age             int comment '����',
   user_gender          int comment '�Ա�',
   user_email           char(100) comment '����',
   extend_1             char(20) comment '�����ֶ�1',
   extend_2             char(20) comment '�����ֶ�2',
   extend_3             char(20) comment '�����ֶ�3',
   extend_4             char(20) comment '�����ֶ�4',
   extend_5             char(20) comment '�����ֶ�5',
   extend_6             char(20) comment '�����ֶ�6',
   extend_7             char(20) comment '�����ֶ�7',
   extend_8             char(20) comment '�����ֶ�8',
   extend_9             char(20) comment '�����ֶ�9',
   extend_10            char(20) comment '�����ֶ�10',
   primary key (user_id)
);

alter table t_u_user comment '�û���Ϣ��';

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

