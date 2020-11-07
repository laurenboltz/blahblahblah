connection: "thelook"

include: "*.view.lkml"                # include all views in the views/ folder in this project

explore: users {
  join: maggie_dt {
    sql_on: ${users.state}=${maggie_dt.state} ;;
    relationship: many_to_one
  }
}
