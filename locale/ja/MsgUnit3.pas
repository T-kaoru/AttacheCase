unit MsgUnit3;

interface

resourcestring

  //�t�H�[���L���v�V����
  FORM_CAPTION_LOAD_INI_FILE                      = 'INI�t�@�C��';
  FORM_CAPTION_LOAD_COMMANDLINE                   = '�R�}���h���C��';
  FORM_CAPTION_LOAD_REGISTRY                      = '���W�X�g��';

	//���b�Z�[�W�L���v�V����
	MSG_CAPTION_ERROR                               = '�G���[';
	MSG_CAPTION_CONFIRMATION                        = '�m�F';

	//�T�C�h�o�[���j���[
	LABEL_BASIC                                     = '��{�ݒ�';
	LABEL_SAVE                                      = '�ۑ��ݒ�';
	LABEL_DELETE                                    = '�폜�ݒ�';
	LABEL_MOVEMENT                                  = '����ݒ�';
	LABEL_SYSTEM                                    = '�V�X�e���ݒ�';
	LABEL_ADVANCED                                  = '���x�Ȑݒ�';

	//��{�ݒ�^�u
	PANEL_BASIC_CAPTION                             = '��{�ݒ� - �A�^�b�V�F�P�[�X�̊�{�I�ȓ���ݒ���s���܂��B';
	BASIC_PANEL_CHECKBOX_MY_ENC_PASSWORD_KEEP       = '�Í����p�X���[�h���L������(&E)';
	BASIC_PANEL_CHECKBOX_MY_DEC_PASSWORD_KEEP       = '�����̃p�X���[�h���L������(&D)';
	BASIC_PANEL_CHECKBOX_MY_PASSWORD_EXE            = '�L���p�X���[�h�Ŋm�F�����Ɏ��s����(&M)';
	BASIC_PANEL_CHECKBOX_WINDOW_MINIMAIZE           = '��ɃE�B���h�E���ŏ������ď�������(&Z)';
	BASIC_PANEL_CHECKBOX_TASKBAR_HIDE               = '�E�B���h�E���ŏ��������Ƃ��^�X�N�o�[�ɕ\�����Ȃ�(&H)';
	BASIC_PANEL_CHECKBOX_TASKTRAY_ICON              = '�^�X�N�g���C�ɃA�C�R����\������(&C)';
	BASIC_PANEL_CHECKBOX_OPEN_FOLDER                = '�t�H���_�[�̏ꍇ�A������ɊJ��(&O)';
	BASIC_PANEL_CHECKBOX_OPEN_FILE                  = '���������t�@�C�����֘A�t����ꂽ�\�t�g�ŊJ��(&A)';
	BASIC_PANEL_CHECKBOX_END_TO_EXIT                = '������ɃA�^�b�V�F�P�[�X���I������(&X)';
	BASIC_PANEL_CHECKBOX_WINDOW_FOREGROUND          = '�f�X�N�g�b�v�ōőO�ʂɃE�B���h�E��\������(&F) ���A�^�b�V�F�P�[�X�̍ċN�����K�v�ł��B';
	BASIC_PANEL_CHECKBOX_NO_HIDE_PASSWORD           = '�p�X���[�h��\�����Ȃ�����͂���(&N)';
	BASIC_PANEL_CHECKBOX_SAVE_TO_EXEOUT             = '��Ɏ��Ȏ��s�`���ŏo�͂���(&T)';
	BASIC_PANEL_CHECKBOX_SHOW_EXEOUT_CHKBOX         = '���C���t�H�[���Ƀ`�F�b�N�{�b�N�X��\������(&I)';
	BASIC_PANEL_CHECKBOX_ASK_ENC_DECODE             = '�Í�/������������₢���킹��(&K)';
	BASIC_PANEL_CHECKBOX_NO_MULTIPLE_INSTANCE       = '�����N�����Ȃ�(&S)';

	DIALOG_MSG_MEM_ENCRYPT_PASSWORD_HASH            = '�h���b�O���h���b�v���ꂽ�t�@�C����SHA-1�n�b�V���l��'+#13+
                                                    '�Í����p�X���[�h�Ƃ��ċL�����܂��B��낵���ł����H';
	DIALOG_MSG_MEM_DECRYPT_PASSWORD_HASH            = '�h���b�O���h���b�v���ꂽ�t�@�C����SHA-1�n�b�V���l��'+#13+
                                                    '��������p�X���[�h�Ƃ��ċL�����܂��B��낵���ł����H';
	DIALOG_MSG_ALLOW_PASSWORD_FILE_OPTION           = '�p�X���[�h�t�@�C�����g�p����ɂ́y���x�ݒ�z�^�u��'+#13+
                                                    '�u�p�X���[�h�t�@�C���Ƀt�@�C���̎w���������(&D)�v��L���ɂ��Ă��������B';

	//�ۑ��ݒ�^�u
	PANEL_SAVE_CAPTION                              = '�ۑ��ݒ� - �o�͂���t�@�C��/�t�H���_�ׂ̍����ݒ���s���܂��B';
	SAVE_PANEL_CHECKBOX_SAVE_TO_SAME_FOLDER         = '��ɓ����ꏊ�ֈÍ����t�@�C����ۑ�����(&C)';
	SAVE_PANEL_CHECKBOX_DECODE_TO_SAME_FOLDER       = '��ɓ����ꏊ�փt�@�C���𕜍�����(&D)';
	SAVE_PANEL_CHECKBOX_CONFIRM_OVERWRITE           = '�����t�@�C��������ꍇ�͏㏑���̊m�F������(&O)';
	SAVE_PANEL_RADIO_GROUP_MULTIPLE_FILES           = '�����t�@�C��������Ƃ��̏����F';
	SAVE_PANEL_RADIO_GROUP_NO_ACTION                = '�������Ȃ�(&N)';
	SAVE_PANEL_RADIO_GROUP_ALL_FILES_PACK           = '�����t�@�C���͈�̈Í����t�@�C���ɂ܂Ƃ߂�(&L)';
	SAVE_PANEL_RADIO_GROUP_FILES_ONE_BY_ONE         = '�t�H���_���̃t�@�C���͌ʂɈÍ���/��������(&P)';
	SAVE_PANEL_CHECKBOX_NO_PARENT_FOLDER            = '��������Ƃ��e�t�H���_�[�𐶐����Ȃ�(&M)';
	SAVE_PANEL_CHECKBOX_KEEP_TIME_STAMP             = '�Í����t�@�C���̃^�C���X�^���v�����t�@�C���ɍ��킹��(&G)';
	SAVE_PANEL_CHECKBOX_SAME_TIME_STAMP             = '�^�C���X�^���v�𕜍����������ɍ��킹��(&P)';
	SAVE_PANEL_CHECKBOX_EXT_IN_ATC_FILE_NAME        = '�Í����t�@�C�����Ɋg���q���܂߂�(&I)';
	SAVE_PANEL_CHECKBOX_AUTO_NAME                   = '�����ňÍ����t�@�C������t������(&R)';

	POPUP_MENU_ITEM_INSERT_FILENAME_FORMAT          = '�t�@�C�����i�g���q�������j(&F)';
	POPUP_MENU_ITEM_INSERT_EXTENSION_FORMAT         = '�g���q�i�s���I�h���܂ށj(&X)';
	POPUP_MENU_ITEM_INSERT_DATETIME_FORMAT          = '����(&D)...';
	POPUP_MENU_ITEM_INSERT_SERIAL_NUM__FORMAT       = '�A��(&S)...';
	POPUP_MENU_ITEM_INSERT_RANDOM_TEXT_FORMAT       = '�����_���ȕ�����(&R)...';
	POPUP_MENU_ITEM_INSERT_FILENAME_HEAD_FORMAT     = '�t�@�C�����擪�̕�����(&T)...';
	POPUP_MENU_ITEM_INSERT_FILENAME_END_FORMAT      = '�t�@�C���������̕�����(&E)...';

  DIALOG_MSG_SELECT_SAVE_ATC_FILE_TO_DIR_PATH     = '�Í����t�@�C������ɕۑ��������t�H���_�[��I�����Ă��������B';
  DIALOG_MSG_SELECT_DECODE_TO_SAME_DIR_PATH       = '���������t�@�C������ɕۑ��������t�H���_�[��I�����Ă��������B';


	//�폜�ݒ�^�u
	PANEL_DELETE_CAPTION                            = '�폜�ݒ� - ������̃t�@�C��/�t�H���_�[�̍폜���@�Ȃǂ�ݒ肵�܂��B';
	DELETE_PANEL_CHECKBOX_DEL_ORG_FILE              = '�Í���������A���t�@�C��/�t�H���_�[���폜����(&D)';
	DELETE_PANEL_CHECKBOX_DEL_ENC_FILE              = '����������A�Í����t�@�C�����폜����(&E)';
	DELETE_PANEL_CHECKBOX_SHOW_DELETE_CHKBOX        = '���C���t�H�[���Ƀ`�F�b�N�{�b�N�X��\������(&I)';
	DELETE_PANEL_RADIO_GROUP_DELETE_OPTION          = '�폜�̏ڍאݒ�F';
	DELETE_PANEL_RADIO_GROUP_NORMAL_DELETE          = '�ʏ�̍폜���s��(&N)';
	DELETE_PANEL_RADIO_GROUP_GO_TO_TRASH            = '���ݔ��ւ̍폜���s��(&T)';
	DELETE_PANEL_RADIO_GROUP_COMPLETE_DELETE        = '���S�폜���s��(&C)';
	DELETE_PANEL_DEL_RAND_NUM                       = '�����̏������݉񐔁F';
	DELETE_PANEL_DEL_ZERO_NUM                       = '�[��(NULL)�̏������݉񐔁F';

	//����ݒ�^�u
	PANEL_MOVEMENT_CAPTION                          = '����ݒ� - ���k���̐ݒ�A�R���y�A���s������ݒ肵�܂��B';
	MOVEMENT_PANEL_RADIO_GROUP_COMPRESS_RATE        = '���k���ݒ�F';
	MOVEMENT_PANEL_CHECKBOX_COMPRESS_RATE           = '���k����(&P)';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_0            = '< 0 > ���k���Ȃ�';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_1            = '< 1 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_2            = '< 2 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_3            = '< 3 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_4            = '< 4 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_5            = '< 5 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_6            = '< 6 > �W�����k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_7            = '< 7 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_8            = '< 8 > ���k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_9            = '< 9 > �ő刳�k';
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_DETAIL       = '�Í����t�@�C���̈��k����ݒ�ł��܂��B'+#13+
	                                                  '�����k < 0 > �` �ő� < 9 > �܂ł̎w�肪�\�ŁA'+#13+
	                                                  '���k���͍����قǏ����Ɏ��Ԃ�������܂��B';
	MOVEMENT_PANEL_RADIO_GROUP_COMPARE              = '�R���y�A�F';
	MOVEMENT_PANEL_CHECKBOX_COMPARE_FILE            = '�Í���������Ƀf�[�^�̃R���y�A���s��(&P)';

	//�V�X�e���ݒ�^�u
	PANEL_SYSTEM_CAPTION                            = '�V�X�e���ݒ� - Windows�V�X�e���Ɋ֌W����ݒ���s���܂��B';
	SYSTEM_PANEL_RADIO_GROUP_WINDOWS_SYS_OPT        = 'Windows�V�X�e���̐ݒ�F';
	SYSTEM_PANEL_BUTTON_ASSOCIATE_ATC_FILE          = '�Í����t�@�C��(*.atc)�̊֘A�t���ݒ�(&A)';
	SYSTEM_PANEL_BUTTON_UN_ASSOCIATE_ATC_FILE       = '�Í����t�@�C��(*.atc)�̊֘A�t������(&F)';
	SYSTEM_PANEL_BUTTON_SHORTCUT_TO_SENDTOFILE_DIR  = '�u����v�t�H���_�[�ɃA�^�b�V�F�P�[�X��ǉ�(&S)';
	SYSTEM_PANEL_BUTTON_DELETE_FROM_SENDTOFILE_DIR  = '�u����v�t�H���_�[����A�^�b�V�F�P�[�X���폜(&S)';
	SYSTEM_PANEL_RADIO_GROUP_CHANGE_FILE_ICON       = '�t�@�C���A�C�R���̕ύX�F';
	SYSTEM_PANEL_BUTTON_ADD_FILE_ICON               = '�A�C�R���t�@�C���̓o�^(&R)';
	SYSTEM_PANEL_RADIO_GROUP_OUTPUT_OPTION_DATA     = '����ݒ�̏o�́F';
	SYSTEM_PANEL_BUTTON_OUTPUT_OPTION_DATA          = '���݂̓���ݒ���o�͂���(&O)';
	SYSTEM_PANEL_BUTTON_CHANGE_TEMP_OPTION_DATA     = '�ꎞ�ݒ�����C���ݒ�ɒu��������(&P)';

  SYSTEM_PANEL_COMBO_USER_REG_FILE_ICON           = '���[�U�[�o�^';

  DIALOG_MSG_NOT_FOUND_ATC_SETUP_EXE              = '�A�^�b�V�F�P�[�X�ɕt������֘A�t���A�v���P�[�V����(AtcSetup.exe)��������܂���B';
	DIALOG_SAVE_TO_INIFILE_FILTER_TEXT              = 'INI�t�@�C��(*.ini)|*.ini|���ׂẴt�@�C��(*.*)|*.*';
	DIALOG_SAVE_TO_INIFILE_TITLE_TEXT               = '���݂̓���ݒ��INI�t�@�C���ɕۑ�';

  DIALOG_MSG_CONFIRM_OVERWRITE_SETTINGS           = '���݁A�ǂݍ��܂�Ă���ȉ���INI�t�@�C���ݒ�����W�X�g���֔��f���܂����H';


	//���x�ݒ�^�u
	PANEL_ADVANCED_CAPTION                          = '���x�Ȑݒ� - �㋉�Ҍ����̐ݒ���s���܂��B';
	ADVANCED_PANEL_LABEL_ADVANCED_OPTION_ALERT_MSG  = '�����ł̐ݒ�����ƁA���Ȃ��̑�؂ȃf�[�^���������ꂪ����܂��B'+#13+
	                                                  '�K���w���v�t�@�C�����Q�Ƃ��A�\�����ӂ��Ă���s���Ă��������B';
	ADVANCED_PANEL_RADIO_GROUP_PASSWORD_FILE        = '�p�X���[�h�t�@�C���̐ݒ�F';
	ADVANCED_PANEL_CHECKBOX_ALLOW_PASS_FILE         = '�p�X���[�h�Ɂu�t�@�C���v�̎w���������(&D)';
	ADVANCED_PANEL_CHECKBOX_PASS_FILE               = '�Í������Ƀp�X���[�h�t�@�C���������`�F�b�N����(&H)';
	ADVANCED_PANEL_CHECKBOX_PASS_FILE_DECRYPT       = '�������Ƀp�X���[�h�t�@�C���������`�F�b�N����(&K)';
	ADVANCED_PANEL_CHECKBOX_NO_ERR_MSG_ON_PASS_FILE = '�t�@�C�����Ȃ��ꍇ�A�G���[���b�Z�[�W��\�����Ȃ�(&N)';
	ADVANCED_PANEL_RADIO_GROUP_CAMO_EXT             = '�g���q�U���ݒ�F';
	ADVANCED_PANEL_CHECKBOX_ADD_CAMO_EXT            = '�Í����t�@�C���̊g���q���U������(&E)';
	ADVANCED_PANEL_LABEL_CAMO_EXT_DETAIL            = '���󔒂ɂ���Ɗg���q����';
	ADVANCED_PANEL_RADIO_GROUP_TYPE_LIMIT           = '�p�X���[�h���͉񐔂̐ݒ�F';
	ADVANCED_PANEL_LABEL_TYPE_LIMIT_ALERT_MSG       = '���̉񐔐ݒ�̓A�^�b�V�F�P�[�X�{�̂ɂł͂Ȃ��X�̃t�@�C���ɐݒ肳��܂��B';
	ADVANCED_PANEL_LABEL_TYPE_LIMIT_NUM             = '�Í����t�@�C���ɓ��͉񐔂�ݒ肷��F';
	ADVANCED_PANEL_CHECKBOX_BROKEN                  = '���̉񐔂��ԈႦ�ē��͂��������ꍇ�A�Í����t�@�C����j�󂷂�(&X)';

	DIALOG_CAPTION_SELECT_PASSWORD_FILE_ENCRYPT     = '�Í�������Ƃ��̃p�X���[�h�t�@�C���I��';
	DIALOG_MSG_SELECT_PASSWORD_FILE_DECRYPT         = '��������Ƃ��̃p�X���[�h�t�@�C���̑I��';
	DIALOG_SELECT_PASSWORD_FILE_FILTER_TEXT         = '���ׂẴt�@�C��(*.*)|*.*';
	DIALOG_MSG_ALLOW_PASSWORD_FILE_ENABLED          = '�p�X���[�h�t�@�C�����g�p����ɂ́u�p�X���[�h�t�@�C���Ƀt�@�C���̎w���������(&D)�v��'+#13+
	                                                  '�L���ɂ���K�v������܂��B�L���ɂ��܂����H';
	DIALOG_MSG_ALLOW_ENCRYPT_PASSWORD_FILE_ENABLED  = '�p�X���[�h�t�@�C�����Ƀt�@�C�����h���b�O���h���b�v����܂����B'+#13+
	                                                  '�Í������Ɏg���p�X���[�h�t�@�C���Ƃ��ēo�^���ėL���ɂ��܂����H';
	DIALOG_MSG_ALLOW_DECRYPT_PASSWORD_FILE_ENABLED  = '�p�X���[�h�t�@�C�����Ƀt�@�C�����h���b�O���h���b�v����܂����B'+#13+
	                                                  '�������Ɏg���p�X���[�h�t�@�C���Ƃ��ēo�^���ėL���ɂ��܂����H';
	DIALOG_MSG_ERROR_PASSWORD_FILE_WRONG            = '�L���ȃt�@�C���i���Ƃ��΃f�B���N�g���Ȃǁj�ȊO�͓o�^���邱�Ƃ��ł��܂���B';


	//�f�o�b�O�i�B���j�^�u
	PANEL_DEBUG_CAPTION                             = '�f�o�b�O�y�[�W - �A�^�b�V�F�P�[�X�̑S�ݒ�l��\�����܂��B';



implementation

initialization

	//Delphi�R���p�C���ɂ��œK����h��

	FORM_CAPTION_LOAD_INI_FILE;
	FORM_CAPTION_LOAD_COMMANDLINE;
	FORM_CAPTION_LOAD_REGISTRY;

	MSG_CAPTION_ERROR;
	MSG_CAPTION_CONFIRMATION;

	LABEL_BASIC;
	LABEL_SAVE;
	LABEL_DELETE;
	LABEL_MOVEMENT;
	LABEL_SYSTEM;
	LABEL_ADVANCED;

	PANEL_BASIC_CAPTION;
	BASIC_PANEL_CHECKBOX_MY_ENC_PASSWORD_KEEP;
	BASIC_PANEL_CHECKBOX_MY_DEC_PASSWORD_KEEP;
	BASIC_PANEL_CHECKBOX_MY_PASSWORD_EXE;
	BASIC_PANEL_CHECKBOX_WINDOW_MINIMAIZE;
	BASIC_PANEL_CHECKBOX_TASKBAR_HIDE;
	BASIC_PANEL_CHECKBOX_TASKTRAY_ICON;
	BASIC_PANEL_CHECKBOX_OPEN_FOLDER;
	BASIC_PANEL_CHECKBOX_OPEN_FILE;
	BASIC_PANEL_CHECKBOX_END_TO_EXIT;
	BASIC_PANEL_CHECKBOX_WINDOW_FOREGROUND;
	BASIC_PANEL_CHECKBOX_NO_HIDE_PASSWORD;
	BASIC_PANEL_CHECKBOX_SAVE_TO_EXEOUT;
	BASIC_PANEL_CHECKBOX_SHOW_EXEOUT_CHKBOX;
	BASIC_PANEL_CHECKBOX_ASK_ENC_DECODE;
	BASIC_PANEL_CHECKBOX_NO_MULTIPLE_INSTANCE;

	DIALOG_MSG_MEM_ENCRYPT_PASSWORD_HASH;
	DIALOG_MSG_MEM_DECRYPT_PASSWORD_HASH;
	DIALOG_MSG_ALLOW_PASSWORD_FILE_OPTION;

	PANEL_SAVE_CAPTION;
	SAVE_PANEL_CHECKBOX_SAVE_TO_SAME_FOLDER;
	SAVE_PANEL_CHECKBOX_DECODE_TO_SAME_FOLDER;
	SAVE_PANEL_CHECKBOX_CONFIRM_OVERWRITE;
	SAVE_PANEL_RADIO_GROUP_MULTIPLE_FILES;
	SAVE_PANEL_RADIO_GROUP_NO_ACTION;
	SAVE_PANEL_RADIO_GROUP_ALL_FILES_PACK;
	SAVE_PANEL_RADIO_GROUP_FILES_ONE_BY_ONE;
	SAVE_PANEL_CHECKBOX_NO_PARENT_FOLDER;
	SAVE_PANEL_CHECKBOX_KEEP_TIME_STAMP;
	SAVE_PANEL_CHECKBOX_SAME_TIME_STAMP;
	SAVE_PANEL_CHECKBOX_EXT_IN_ATC_FILE_NAME;
	SAVE_PANEL_CHECKBOX_AUTO_NAME;

	POPUP_MENU_ITEM_INSERT_FILENAME_FORMAT;
	POPUP_MENU_ITEM_INSERT_EXTENSION_FORMAT;
	POPUP_MENU_ITEM_INSERT_DATETIME_FORMAT;
	POPUP_MENU_ITEM_INSERT_SERIAL_NUM__FORMAT;
	POPUP_MENU_ITEM_INSERT_RANDOM_TEXT_FORMAT;
	POPUP_MENU_ITEM_INSERT_FILENAME_HEAD_FORMAT;
	POPUP_MENU_ITEM_INSERT_FILENAME_END_FORMAT;

	DIALOG_MSG_SELECT_SAVE_ATC_FILE_TO_DIR_PATH;
	DIALOG_MSG_SELECT_DECODE_TO_SAME_DIR_PATH;


	PANEL_DELETE_CAPTION;
	DELETE_PANEL_CHECKBOX_DEL_ORG_FILE;
	DELETE_PANEL_CHECKBOX_DEL_ENC_FILE;
	DELETE_PANEL_CHECKBOX_SHOW_DELETE_CHKBOX;
	DELETE_PANEL_RADIO_GROUP_DELETE_OPTION;
	DELETE_PANEL_RADIO_GROUP_NORMAL_DELETE;
	DELETE_PANEL_RADIO_GROUP_GO_TO_TRASH;
	DELETE_PANEL_RADIO_GROUP_COMPLETE_DELETE;
	DELETE_PANEL_DEL_RAND_NUM;
	DELETE_PANEL_DEL_ZERO_NUM;

	PANEL_MOVEMENT_CAPTION;
	MOVEMENT_PANEL_RADIO_GROUP_COMPRESS_RATE;
	MOVEMENT_PANEL_CHECKBOX_COMPRESS_RATE;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_0;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_1;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_2;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_3;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_4;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_5;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_6;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_7;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_8;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_9;
	MOVEMENT_PANEL_LABEL_COMPRESS_RATE_DETAIL;
	MOVEMENT_PANEL_RADIO_GROUP_COMPARE;
	MOVEMENT_PANEL_CHECKBOX_COMPARE_FILE;

	PANEL_SYSTEM_CAPTION;
	SYSTEM_PANEL_RADIO_GROUP_WINDOWS_SYS_OPT;
	SYSTEM_PANEL_BUTTON_ASSOCIATE_ATC_FILE;
	SYSTEM_PANEL_BUTTON_UN_ASSOCIATE_ATC_FILE;
	SYSTEM_PANEL_BUTTON_SHORTCUT_TO_SENDTOFILE_DIR;
	SYSTEM_PANEL_BUTTON_DELETE_FROM_SENDTOFILE_DIR;
	SYSTEM_PANEL_RADIO_GROUP_CHANGE_FILE_ICON;
	SYSTEM_PANEL_BUTTON_ADD_FILE_ICON;
	SYSTEM_PANEL_RADIO_GROUP_OUTPUT_OPTION_DATA;
	SYSTEM_PANEL_BUTTON_OUTPUT_OPTION_DATA;
	SYSTEM_PANEL_BUTTON_CHANGE_TEMP_OPTION_DATA;

	SYSTEM_PANEL_COMBO_USER_REG_FILE_ICON;

	DIALOG_MSG_NOT_FOUND_ATC_SETUP_EXE;
	DIALOG_SAVE_TO_INIFILE_FILTER_TEXT;
	DIALOG_SAVE_TO_INIFILE_TITLE_TEXT;

	DIALOG_MSG_CONFIRM_OVERWRITE_SETTINGS;


	PANEL_ADVANCED_CAPTION;
	ADVANCED_PANEL_LABEL_ADVANCED_OPTION_ALERT_MSG;
	ADVANCED_PANEL_RADIO_GROUP_PASSWORD_FILE;
	ADVANCED_PANEL_CHECKBOX_ALLOW_PASS_FILE;
	ADVANCED_PANEL_CHECKBOX_PASS_FILE;
	ADVANCED_PANEL_CHECKBOX_PASS_FILE_DECRYPT;
	ADVANCED_PANEL_CHECKBOX_NO_ERR_MSG_ON_PASS_FILE;
	ADVANCED_PANEL_RADIO_GROUP_CAMO_EXT;
	ADVANCED_PANEL_CHECKBOX_ADD_CAMO_EXT;
	ADVANCED_PANEL_LABEL_CAMO_EXT_DETAIL;
	ADVANCED_PANEL_RADIO_GROUP_TYPE_LIMIT;
	ADVANCED_PANEL_LABEL_TYPE_LIMIT_ALERT_MSG;
	ADVANCED_PANEL_LABEL_TYPE_LIMIT_NUM;
	ADVANCED_PANEL_CHECKBOX_BROKEN;

	DIALOG_CAPTION_SELECT_PASSWORD_FILE_ENCRYPT;
	DIALOG_MSG_SELECT_PASSWORD_FILE_DECRYPT;
	DIALOG_SELECT_PASSWORD_FILE_FILTER_TEXT;
	DIALOG_MSG_ALLOW_PASSWORD_FILE_ENABLED;
	DIALOG_MSG_ALLOW_ENCRYPT_PASSWORD_FILE_ENABLED;
	DIALOG_MSG_ALLOW_DECRYPT_PASSWORD_FILE_ENABLED;
	DIALOG_MSG_ERROR_PASSWORD_FILE_WRONG;


	PANEL_DEBUG_CAPTION;




end.

