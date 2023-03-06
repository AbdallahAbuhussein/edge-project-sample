export interface Env {
	edge_sample_db_binding: D1Database;
  }
  export default {
	async fetch(request: Request, env: Env) {
	  const { pathname } = new URL(request.url);
  
	  if (pathname === "/api/users") {
		const { results } = await env.edge_sample_db_binding.prepare(
		  "SELECT * FROM users"
		) 
		.all();
		return Response.json(results);
	  }
  
	  return new Response(
		"wrong path",
	  );
	},
  };