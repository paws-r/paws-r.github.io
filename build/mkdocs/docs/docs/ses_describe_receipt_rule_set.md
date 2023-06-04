<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_describe_receipt_rule_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of the specified receipt rule set

### Description

Returns the details of the specified receipt rule set.

For information about managing receipt rule sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_describe_receipt_rule_set(RuleSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_describe_receipt_rule_set_:_RuleSetName">RuleSetName</code></td>
<td><p>[required] The name of the receipt rule set to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metadata = list(
        Name = "string",
        CreatedTimestamp = as.POSIXct(
          "2015-01-01"
        )
      ),
      Rules = list(
        list(
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
    )

### Request syntax

    svc$describe_receipt_rule_set(
      RuleSetName = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the metadata and receipt rules of a
    # receipt rule set:
    svc$describe_receipt_rule_set(
      RuleSetName = "MyRuleSet"
    )

    ## End(Not run)
