# 班级综测在线填写系统（免费轻量版）

## 功能
- 学生端：选择姓名/学号，填写德育、劳动、体育/体艺等信息，提交保存到 Supabase。
- 管理员端：输入管理员口令，查看全班总表、自动计算综测总分、排名、导出 CSV。
- 前端静态网页，可部署到 Vercel、GitHub Pages、Netlify。

## 部署步骤
1. 注册 Supabase，新建 Project。
2. 进入 SQL Editor，复制并执行 `supabase_schema.sql`。
3. 在 Project Settings → API 中复制：Project URL 和 anon public key。
4. 把 `config.example.js` 复制为 `config.js`，填入上述两个值，并修改 `ADMIN_CODE`。
5. 把整个文件夹上传到 GitHub。
6. 用 Vercel 导入该 GitHub 仓库，直接部署即可。

## 注意
这是班级轻量版系统，适合综测收集与核算。由于没有正式账号登录，不建议填写身份证号、手机号、家庭住址等敏感信息。证明材料建议先用腾讯文档/网盘/QQ群文件保存，然后在系统里粘贴链接。
