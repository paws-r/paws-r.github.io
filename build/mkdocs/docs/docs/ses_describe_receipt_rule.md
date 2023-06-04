<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_describe_receipt_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of the specified receipt rule

### Description

Returns the details of the specified receipt rule.

For information about setting up receipt rules, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

You can execute this operation no more than once per second.

### Usage

    ses_describe_receipt_rule(RuleSetName, RuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_describe_receipt_rule_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set that the receipt rule
belongs to.</p></td>
</tr>
<tr class="even">
<td><code id="ses_describe_receipt_rule_:_RuleName">RuleName</code></td>
<td><p>[required] The name of the receipt rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rule = list(
        Name = "string",
        Enabled = TRUE|FALSE,
        TlsPolicy = "Require"|"Optional",
        Recipients = list(
          "string"
        ),
        Actions = list(
          list(
            S3Action = list(
              TopicArn = "string",
              BucketName = "string",
              ObjectKeyPrefix = "string",
              KmsKeyArn = "string"
            ),
            BounceAction = list(
              TopicArn = "string",
              SmtpReplyCode = "string",
              StatusCode = "string",
              Message = "string",
              Sender = "string"
            ),
            WorkmailAction = list(
              TopicArn = "string",
              OrganizationArn = "string"
            ),
            LambdaAction = list(
              TopicArn = "string",
              FunctionArn = "string",
              InvocationType = "Event"|"RequestResponse"
            ),
            StopAction = list(
              Scope = "RuleSet",
              TopicArn = "string"
            ),
            AddHeaderAction = list(
              HeaderName = "string",
              HeaderValue = "string"
            ),
            SNSAction = list(
              TopicArn = "string",
              Encoding = "UTF-8"|"Base64"
            )
          )
        ),
        ScanEnabled = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_receipt_rule(
      RuleSetName = "string",
      RuleName = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the details of a receipt rule:
    svc$describe_receipt_rule(
      RuleName = "MyRule",
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
