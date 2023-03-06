
# Using D1 with cloudflare worker


This guide explains how to install and use Cloudflare Wrangler debug/deploy TypeScript workers, and connect to D1 to excute queries



## Requirements

- [Node.js](https://nodejs.org/) (version 14 or higher)
- [Cloudflare Wrangler](https://developers.cloudflare.com/workers/cli-wrangler/install-update)


## Installation

To install Cloudflare Wrangler and set up your environment, follow these steps:

1. Install Node.js from the official website: https://nodejs.org/
2. Install Cloudflare Wrangler by running the following command in your terminal:
```
npm install -g @cloudflare/wrangler
```
## Configuration

Before you can use Wrangler, you need to log in to your Cloudflare account and create an API token. Here's how to do it:

1. Log in to your Cloudflare account at https://dash.cloudflare.com/
2. Go to **My Profile** → **API Tokens**
3. Click **Create Token**
4. Give the token a name (e.g., "Wrangler CLI") and select the **Edit Cloudflare Workers** template
5. Click **Create Token**
6. Copy the token value (you won't be able to see it again!)

Now you can configure Wrangler to use your Cloudflare account and API token:

1. Open your terminal and navigate to your project directory
2. Run the following command:
```
wrangler login
```

3. Enter your Cloudflare email and API token when prompted

## Execute a SQL File

to create the D1 database and the users table:
1. Open your terminal and navigate to your project directory
2. Go to this file wrangler.toml and update the binding, database_name and database_id
3. Run the following command:
```
wrangler d1 execute <DB_NAME> --file=user.sql
```
4. To see of the table is created Run:
```
wrangler d1 execute <DB_NAME> --command='SELECT * FROM users'  
```


## Run the worker loacly

To run the worker on your local, Run the following command:
```
npm start
```
you should see the following 
```
⛅️ wrangler 2.12.0 
--------------------
▲ [WARNING] Processing wrangler.toml configuration:

    - D1 Bindings are currently in alpha to allow the API to evolve before general availability.
      Please report any issues to https://github.com/cloudflare/workers-sdk/issues/new/choose
      Note: Run this command with the environment variable NO_D1_WARNING=true to hide this message
  
      For example: `export NO_D1_WARNING=true && wrangler <YOUR COMMAND HERE>`


--------------------
💡 Recommendation: for development, use a preview D1 database rather than the one you'd use in production.
💡 Create a new D1 database with "wrangler d1 create <name>" and add its id as preview_database_id to the d1_database "edge_sample_db_binding" in your wrangler.toml
--------------------

Your worker has access to the following bindings:
- D1 Databases:
  - edge_sample_db_binding: edge_sample_db (e3ba9bbf-d38e-4c93-b537-8e71581536fe)
⬣ Listening at http://0.0.0.0:8787
- http://127.0.0.1:8787
- http://10.0.0.216:8787
- http://10.19.252.5:8787
Total Upload: 6.68 KiB / gzip: 2.13 KiB
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ [b] open a browser, [d] open Devtools, [l] turn on local mode, [c] clear console, [x] to exit                                                                                │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯

```
Click d to open the worker in the browser, and than go to /api/users.


## Deployment

To deploy this project run

```bash
  wrangler publish
```

