package terraform.cost

max_monthly_cost := 20

#
# Deny if monthly cost exceeds limit
#
deny[msg] {

  cost := input.cost_estimate

  # Ensure cost data exists
  cost.total_monthly_cost != null
  cost.total_monthly_cost > max_monthly_cost

  msg := sprintf(
    "Monthly cost %.2f exceeds allowed limit of %.2f",
    [cost.total_monthly_cost, max_monthly_cost]
  )
}
