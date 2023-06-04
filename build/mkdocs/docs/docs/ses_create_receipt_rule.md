<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_create_receipt_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a receipt rule

### Description

Creates a receipt rule.

For information about setting up receipt rules, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules).

You can execute this operation no more than once per second.

### Usage

    ses_create_receipt_rule(RuleSetName, After, Rule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_create_receipt_rule_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the rule set that the receipt rule will be
added to.</p></td>
</tr>
<tr class="even">
<td><code id="ses_create_receipt_rule_:_After">After</code></td>
<td><p>The name of an existing rule after which the new rule will be
placed. If this parameter is null, the new rule will be inserted at the
beginning of the rule list.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_create_receipt_rule_:_Rule">Rule</code></td>
<td><p>[required] A data structure that contains the specified rule's
name, actions, recipients, domains, enabled status, scan status, and TLS
policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_receipt_rule(
      RuleSetName = "string",
      After = "string",
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
    # The following example creates a new receipt rule:
    svc$create_receipt_rule(
      After = "",
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
