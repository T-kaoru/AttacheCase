unit MsgDelete;

interface

resourcestring

	//���b�Z�[�W�L���v�V����
	MSG_CAPTION_ERROR                        = '�G���[';
	MSG_CAPTION_CONFIRMATION                 = '�m�F';

  //���b�Z�[�W�_�C�A���O
  MSG_ERROR_NOT_FILE_OPEN                  = '�t�@�C���폜���ɃG���[���������܂����B�t�@�C�����J�����Ƃ��ł��܂���B';
  MSG_ERROR_GO_TO_TRASH_FAILED             = '���ݔ��ւ̍폜�Ɏ��s���܂����B'+#13+
                                             '�ꕔ�̃t�@�C��/�t�H���_���폜�ł����Ɏc���Ă��܂����\��������܂��B';

  //���x��
  LABEL_STATUS_TITLE_LISTING               = '�t�@�C�����X�g�̐���';
  LABEL_STATUS_TITLE_DELETING              = '�폜���Ă��܂�...';
  LABEL_STATUS_TITLE_COMPLETE_DELETING     = '���S�폜���Ă��܂�...';
  LABEL_STATUS_TITLE_GO_TO_TRASH           = '���ݔ��ֈړ����Ă��܂�...';
  LABEL_STATUS_TITLE_ERROR                 = '�G���[';
  LABEL_STATUS_TITLE_USER_CANCEL           = '�L�����Z��';
  LABEL_STATUS_TITLE_COMPLETE              = '����';

  //���x���i�ڍא����j
  LABEL_STATUS_DETAIL_PREPARING            = '�폜���邽�߂̏��������Ă��܂�...';
  LABEL_STATUS_DETAIL_WRITE_RAND           = '�������������݁A���S�폜���s���Ă��܂�...(Step:%d/%d)';
  LABEL_STATUS_DETAIL_WRITE_ZERO           = '�[��(NULL)���������݁A���S�폜���s���Ă��܂�...(Step:%d/%d)';
  LABEL_STATUS_DETAIL_FAILED               = '�폜�Ɏ��s���܂����B';
  LABEL_STATUS_DETAIL_STOPPED              = '�폜�����~����܂����B';
  LABEL_STATUS_DETAIL_COMPLETE             = '�폜������Ɋ������܂����B';



implementation

initialization

	//Delphi�R���p�C���ɂ��œK����h��

	MSG_CAPTION_ERROR;
	MSG_CAPTION_CONFIRMATION;

	MSG_ERROR_NOT_FILE_OPEN;
	MSG_ERROR_GO_TO_TRASH_FAILED;

	LABEL_STATUS_TITLE_LISTING;
	LABEL_STATUS_TITLE_DELETING;
	LABEL_STATUS_TITLE_COMPLETE_DELETING;
	LABEL_STATUS_TITLE_GO_TO_TRASH;
	LABEL_STATUS_TITLE_ERROR;
	LABEL_STATUS_TITLE_USER_CANCEL;
	LABEL_STATUS_TITLE_COMPLETE;

	LABEL_STATUS_DETAIL_PREPARING;
	LABEL_STATUS_DETAIL_WRITE_RAND;
	LABEL_STATUS_DETAIL_WRITE_ZERO;
	LABEL_STATUS_DETAIL_FAILED;
	LABEL_STATUS_DETAIL_STOPPED;
	LABEL_STATUS_DETAIL_COMPLETE;




end.

