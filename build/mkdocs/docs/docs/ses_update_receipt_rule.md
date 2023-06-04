<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_update_receipt_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a receipt rule

### Description

Updates a receipt rule.

For information about managing receipt rules, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

You can execute this operation no more than once per second.

### Usage

    ses_update_receipt_rule(RuleSetName, Rule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_update_receipt_rule_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set that the receipt rule
belongs to.</p></td>
</tr>
<tr class="even">
<td><code id="ses_update_receipt_rule_:_Rule">Rule</code></td>
<td><p>[required] A data structure that contains the updated receipt
rule information.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_receipt_rule(
      RuleSetName = "string",
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

### Examples

    ## Not run: 
    # The following example updates a receipt rule to use an Amazon S3 action:
    svc$update_receipt_rule(
      Rule = list(
        Actions = list(
          list(
            S3Action = list(
              BucketName = "MyBucket",
              ObjectKeyPrefix = "email"
            )
          )
        ),
        Enabled = TRUE,
        Name = "MyRule",
        ScanEnabled = TRUE,
        TlsPolicy = "Optional"
      ),
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
