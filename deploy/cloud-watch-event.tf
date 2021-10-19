resource "aws_cloudwatch_event_rule" "every_one_minute" {
  name                = "every_one_minute"
  description         = "Fires every one minute"
  schedule_expression = "rate(1 minute)"
}

resource "aws_cloudwatch_event_target" "demo_lambda_every_one_minute" {
    rule      = aws_cloudwatch_event_rule.every_one_minute.name
    target_id = "demo_lambda"
    arn       = aws_lambda_function.demo_lambda.arn
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_demo_lambda" {
    statement_id = "AllowExecutionFromCloudWatch"
    action = "lambda:InvokeFunction"
    function_name = var.LAMBDA_FUNCTION_NAME
    principal = "events.amazonaws.com"
    source_arn = aws_cloudwatch_event_rule.every_one_minute.arn
}
