common
=================

common server setting

OS Platform
-----------------

### Debian

- bookworm
- bullseye

Role Variables
--------------

設定方法の詳細については[defaults/main.yml](defaults/main.yml)のサンプルコードを参照してください。

### `common_packages`

インストールするパッケージ

### `common_groups`

グループの設定

### `common_users`

ユーザーの設定

### `common_hostname`

ホスト名

### `common_ssh_port`

SSHのポート番号

### `common_sshd_custom_cfg`

SSHのカスタム設定

### `common_ssh_ufw_rule`

ufwのSSHポートルール

### `common_ssh_use_geoip_filter`

SSHのGeoIPフィルタの有効/無効

### `common_ssh_allow_countries`

SSH接続を許可する国コード  
※「common_ssh_use_geoip_filter」が有効な場合のみ設定を行ってください

### `common_geoip_update_files`

自動更新するGeoIPデータベースファイル  
https://mailfud.org/geoip-legacy/

### `common_apt_default_release_backports`

backportsをデフォルトリリースに設定するか否か

### `postfix_cfg`

Postfixの設定

### `fail2ban_cfg`

fail2banの追加設定

### `rsyslog_custom_cfg`

syslogの追加設定

### `admin_group_name`

管理者グループ名

### `admin_group_sudo_require_password`

管理者グループに所属するユーザーがsudo実行時にパスワードの入力を行うか否か

### `auto_update_cfg`

パッケージの自動更新(cron-apt)のカスタム設定

### `common_swapfile_path`

スワップファイルのパス  
※スワップ領域が存在する場合、この変数に設定は無視されます

### `common_swap_size`

スワップのサイズ  
※スワップ領域が存在する場合、この変数に設定は無視されます

### `common_files`

ファイルのアップロード設定

### `common_cron_vars`

cron変数の設定

### `common_cron_jobs`

cronの設定

### `common_disks`

ディスクの設定

### `common_mounts`

マウントの設定

### `glances_additional_packages`

glances用の追加インストールパッケージ

### `glances_additional_pip_packages`

glances用の追加インストールパッケージ(pip)

### `glances_setting`

glancesの設定

### `glances_service_params`

glancesのサービス用コマンドラインパラメーター  
@see https://glances.readthedocs.io/en/latest/cmds.html

### `glances_service_setting`

glancesのサービス設定

### `glances_allow_ports`

glancesサービスのために開放するポート

### `banner_logo_text`

ログインバナーに表示するロゴのテキスト

### `banner_additional_text`

ログインバナーに表示する追加テキスト

### `banner_options`

ログインバナーのログ生成時のオプション  
(※toiletのコマンドラインオプションを指定)

### `common_install_utilities`

インストールするユーティリティパッケージ

### `common_japanese_fonts`

日本語フォント(パッケージ)の設定

### `install_other_japanese_fonts`

その他の日本語フォントのインストールの可否  
※現時点ではモリサワの「BIZ UD」フォントのみ

Example Playbook
--------------

```yaml
- hosts: servers
  roles:
    - role: common
```

License
--------------

Apache License 2.0
