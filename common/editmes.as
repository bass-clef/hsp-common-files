
// Edit Control Message
// ���ׂ�ۂ̓t���X�N���[������

#define global EM_GETSEL               0x00B0	// ���ݑI������Ă���C���f�b�N�X���擾
#define global EM_SETSEL               0x00B1	// �������I��
#define global EM_GETRECT              0x00B2	// �����`�̍��W���擾����
#define global EM_SETRECT              0x00B3	// �����`�̍��W��ݒ肵�ĕ`��
#define global EM_SETRECTNP            0x00B4	// �����`�̍��W��ݒ肾��
#define global EM_SCROLL               0x00B5	// �����X�N���[��
#define global EM_LINESCROLL           0x00B6	// �����E�����X�N���[��
#define global EM_SCROLLCARET          0x00B7	// �L�����b�g�̌�����ʒu�܂ŃX�N���[��
#define global EM_GETMODIFY            0x00B8	// �ύX�t���O�̎擾
#define global EM_SETMODIFY            0x00B9	// �ύX�t���O�̐ݒ�
#define global EM_GETLINECOUNT         0x00BA	// �s���̎擾
#define global EM_LINEINDEX            0x00BB	// �s�̕����C���f�b�N�X�擾
#define global EM_SETHANDLE            0x00BC	// �\���e�L�X�g�̂��߂̃������n���h���ݒ�
#define global EM_GETHANDLE            0x00BD	// �\���e�L�X�g�̂��߂̃������n���h���擾
#define global EM_GETTHUMB             0x00BE	// �X�N���[���ʒu�擾
#define global EM_LINELENGTH           0x00C1	// �s�̒����擾
#define global EM_REPLACESEL           0x00C2	// �I�𕶎����u��
#define global EM_GETLINE              0x00C4	// �w��s�̃e�L�X�g�擾
#define global EM_LIMITTEXT            0x00C5	// �ő�e�L�X�g�ʂ̐ݒ�
#define global EM_CANUNDO              0x00C6	// �u���ɖ߂��v�̉\�����擾
#define global EM_UNDO                 0x00C7	// �u���ɖ߂��v�̎��s
#define global EM_FMTLINES             0x00C8	// �\�t�g���s�̃I���E�I�t
#define global EM_LINEFROMCHAR         0x00C9	// �w�蕶���C���f�b�N�X����s�C���f�b�N�X�擾 wp&-1:�L�����b�g�ʒu
#define global EM_SETTABSTOPS          0x00CB	// �^�u�X�g�b�v�̐ݒ�
#define global EM_SETPASSWORDCHAR      0x00CC	// �p�X���[�h�����̐ݒ�E����
#define global EM_EMPTYUNDOBUFFER      0x00CD	// �u���ɖ߂��v�̃t���O���Z�b�g
#define global EM_GETFIRSTVISIBLELINE  0x00CE	// �ł���ɕ\������Ă���s���擾
#define global EM_SETREADONLY          0x00CF	// �ǂݎ���p�X�^�C���̐ݒ�Ɖ���
#define global EM_SETWORDBREAKPROC     0x00D0	// ���[�h�g���b�v�֐��̐ݒ�
#define global EM_GETWORDBREAKPROC     0x00D1	// ���[�h�g���b�v�֐��̎擾
#define global EM_GETPASSWORDCHAR      0x00D2	// �p�X���[�h�����̎擾
#define global EM_SETMARGINS           0x00D3	// ���E�̃}�[�W���ݒ�
#define global EM_GETMARGINS           0x00D4	// ���E�̃}�[�W���擾
#define global EM_SETLIMITTEXT         EM_LIMITTEXT   /* ;win40 Name change */
#define global EM_GETLIMITTEXT         0x00D5	// �ő�e�L�X�g�ʂ̎擾
#define global EM_POSFROMCHAR          0x00D6	// �w�蕶���̈ʒu�̎擾
#define global EM_CHARFROMPOS          0x00D7	//�w����W�̕����C���f�b�N�X�ƍs�C���f�b�N�X�̎擾
#define global EM_SETIMESTATUS         0x00D8
#define global EM_GETIMESTATUS         0x00D9
