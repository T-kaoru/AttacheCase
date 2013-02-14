unit MsgUnit4;

interface

resourcestring

	//���b�Z�[�W�L���v�V����
	MSG_CAPTION_ERROR                             = '�G���[';
	MSG_CAPTION_CONFIRMATION                      = '�m�F';

	FORM_CAPTION_INPUT_ENCRYPT_MEM_PASSWORD       = '�L������Í����p�X���[�h�̓���';
	FORM_CAPTION_INSERT_DECRYPT_MEM_PASSWORD      = '�L�����镜���p�X���[�h�̓���';
	FORM_CAPTION_INSERT_DATETIME_FORMAT           = '���������̑}��';
	FORM_CAPTION_INSERT_SERIAL_NUM_FORMAT         = '�A�ԏ����̑}��';
	FORM_CAPTION_INSERT_RANDOM_TEXT_NUM_FORMAT    = '�����_�������񐔂̑}��';
	FORM_CAPTION_INSERT_FILE_NAME_HEAD_NUM_FORMAT = '�t�@�C�����̐擪�������̑}��';
	FORM_CAPTION_INSERT_FILE_NAME_END_NUM_FORMAT  = '�t�@�C�����̖����������̑}��';

	BUTTON_CAPTION_OK                             = '&OK';
	BUTTON_CAPTION_INSERT                         = '�}��(&I)';
	BUTTON_CAPTION_CANCEL                         = '�L�����Z��(&C)';

	LABEL_INPUT_MEM_NEW_PASSWORD                  = '�L������V�����p�X���[�h����͂��Ă�������...';
	LABEL_INPUT_MEM_NEW_PASSWORD_CONFIRM          = '�m�F���邽�߁A������x�����p�X���[�h���͂��Ă�������...';

	LABEL_INSERT_DATETIME                         = '�}����������̏����F';
	LABEL_INSERT_SERIAL_NUM                       = '�A�Ԃ̌����F';
	LABEL_INSERT_RANDOM_TEXT                      = '�����_��������̐��F';
	LABEL_INSERT_FILE_NAME_HEAD                   = '�t�@�C�����̐擪�������F';
	LABEL_INSERT_FILE_NAME_END                    = '�t�@�C�����̖����������F';


	MSG_ERROR_PASSWORD_MAX_NUM                    = '�p�X���[�h�Ɏg�p�ł��镶�����͔��p56�����i�S�p28�����j�ȓ��ł��B';
	MSG_ERROR_INPUT_PASSWORD_MISMATCH             = '���͂��ꂽ�p�X���[�h�Ƃ������܂��B'+#13+'�ēx�p�X���[�h����͂��Ă��������B';



implementation

initialization

	//Delphi�R���p�C���ɂ��œK����h��

	MSG_CAPTION_ERROR;
	MSG_CAPTION_CONFIRMATION;

	FORM_CAPTION_INPUT_ENCRYPT_MEM_PASSWORD;
	FORM_CAPTION_INSERT_DECRYPT_MEM_PASSWORD;
	FORM_CAPTION_INSERT_DATETIME_FORMAT;
	FORM_CAPTION_INSERT_SERIAL_NUM_FORMAT;
	FORM_CAPTION_INSERT_RANDOM_TEXT_NUM_FORMAT;
	FORM_CAPTION_INSERT_FILE_NAME_HEAD_NUM_FORMAT;
	FORM_CAPTION_INSERT_FILE_NAME_END_NUM_FORMAT;

	BUTTON_CAPTION_OK;
	BUTTON_CAPTION_INSERT;
	BUTTON_CAPTION_CANCEL;

	LABEL_INPUT_MEM_NEW_PASSWORD;
	LABEL_INPUT_MEM_NEW_PASSWORD_CONFIRM;

	LABEL_INSERT_DATETIME;
	LABEL_INSERT_SERIAL_NUM;
	LABEL_INSERT_RANDOM_TEXT;
	LABEL_INSERT_FILE_NAME_HEAD;
	LABEL_INSERT_FILE_NAME_END;


	MSG_ERROR_PASSWORD_MAX_NUM;
	MSG_ERROR_INPUT_PASSWORD_MISMATCH;




end.

