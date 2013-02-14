unit MsgEncrypt;

interface

resourcestring

	//���b�Z�[�W�L���v�V����
	MSG_CAPTION_ERROR                  = '�G���[';
	MSG_CAPTION_CONFIRMATION           = '�m�F';

	//���b�Z�[�W
	MSG_ERROR_FILE_OPEN                = '�Í�������t�@�C�����J���܂���B���̃A�v���P�[�V�������g�p���̉\��������܂��B';
	MSG_ERROR_OUT_FILE_OPEN            = '�ۑ������̃t�@�C�����J���܂���B���̃A�v���P�[�V�������g�p���̉\��������܂��B';
	MSG_ERROR_OUT_FILE_WRITE           = '�ۑ���Ɏw�肳�ꂽ�Í����t�@�C���ɏ������߂܂���B';
	MSG_ERROR_EXEOUT_FAILED            = '���s�\�`���o�͂Ɏ��s���܂����B�Í��������𒆎~���܂��B';

	MSG_ERROR_NO_DISK_FREE_SPACE       = '�f�B�X�N�̋󂫗e�ʂ�����܂���B�Í����t�@�C����ۑ��ł��܂���B'+#13+
	                                     '�Í����𒆎~���܂��B';
	MSG_ERROR_OVER_4GB_EXE             = '���s�`���t�@�C���̃T�C�Y��4GB�𒴂��Ă��܂��\��������܂��I'+#13+
	                                     'Win32�A�v���P�[�V�����Ƃ��Ď��s�ł��Ȃ��Ȃ邩������܂��񂪂�낵���ł����H';
	MSG_ERROR_ZLIB                     = 'zlib���C�u��������G���[��Ԃ���܂����B'+#13+'�G���[�ԍ��F';

	MSG_CONFIRM_OVER_WRITE_SAME_FILE  = '�����̃t�@�C�������ɑ��݂��Ă��܂��B�㏑�����ĈÍ������܂����H';

	//���x��
	LABEL_STATUS_TITLE_ENCRYPTING      = '�Í������Ă��܂�...';
	LABEL_STATUS_TITLE_LISTING         = '�Í�������t�@�C�����X�g�𐶐���...';
	LABEL_STATUS_TITLE_ENCRYPTING_LIST = '�w�b�_�f�[�^����������ł��܂�...';
	LABEL_STATUS_TITLE_ERROR           = '�G���[';
	LABEL_STATUS_TITLE_USER_CANCEL     = '�L�����Z��';
	LABEL_STATUS_TITLE_COMPLETE        = '����';

	LABEL_STATUS_DETAIL_FAILED         = '�Í����Ɏ��s���܂����B';
	LABEL_STATUS_DETAIL_STOPPED        = '�Í��������~����܂����B';


implementation

initialization

	//Delphi�R���p�C���ɂ��œK����h��

	MSG_CAPTION_ERROR;
	MSG_CAPTION_CONFIRMATION;

	MSG_ERROR_FILE_OPEN;
	MSG_ERROR_OUT_FILE_OPEN;
	MSG_ERROR_OUT_FILE_WRITE;
	MSG_ERROR_EXEOUT_FAILED;

	MSG_ERROR_NO_DISK_FREE_SPACE;
	MSG_ERROR_OVER_4GB_EXE;
	MSG_ERROR_ZLIB;

	MSG_CONFIRM_OVER_WRITE_SAME_FILE;

	LABEL_STATUS_TITLE_ENCRYPTING;
	LABEL_STATUS_TITLE_LISTING;
	LABEL_STATUS_TITLE_ENCRYPTING_LIST;
	LABEL_STATUS_TITLE_ERROR;
	LABEL_STATUS_TITLE_USER_CANCEL;
	LABEL_STATUS_TITLE_COMPLETE;

	LABEL_STATUS_DETAIL_FAILED;
	LABEL_STATUS_DETAIL_STOPPED;



end.

