<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_remediation_exceptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A remediation exception is when a specified resource is no longer considered for auto-remediation

### Description

A remediation exception is when a specified resource is no longer
considered for auto-remediation. This API adds a new exception or
updates an existing exception for a specified resource with a specified
Config rule.

Config generates a remediation exception when a problem occurs running a
remediation action for a specified resource. Remediation exceptions
blocks auto-remediation until the exception is cleared.

When placing an exception on an Amazon Web Services resource, it is
recommended that remediation is set as manual remediation until the
given Config rule for the specified resource evaluates the resource as
`NON_COMPLIANT`. Once the resource has been evaluated as
`NON_COMPLIANT`, you can add remediation exceptions and change the
remediation type back from Manual to Auto if you want to use
auto-remediation. Otherwise, using auto-remediation before a
`NON_COMPLIANT` evaluation result can delete resources before the
exception is applied.

Placing an exception can only be performed on resources that are
`NON_COMPLIANT`. If you use this API for `COMPLIANT` resources or
resources that are `NOT_APPLICABLE`, a remediation exception will not be
generated. For more information on the conditions that initiate the
possible Config evaluation results, see [Concepts | Config
Rules](https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules)
in the Config Developer Guide.

### Usage

    configservice_put_remediation_exceptions(ConfigRuleName, ResourceKeys,
      Message, ExpirationTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_remediation_exceptions_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule for which you want to
create remediation exception.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_remediation_exceptions_:_ResourceKeys">ResourceKeys</code></td>
<td><p>[required] An exception list of resource exception keys to be
processed with the current request. Config adds exception for each
resource key. For example, Config adds 3 exceptions for 3 resource
keys.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_remediation_exceptions_:_Message">Message</code></td>
<td><p>The message contains an explanation of the exception.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_remediation_exceptions_:_ExpirationTime">ExpirationTime</code></td>
<td><p>The exception is automatically deleted after the expiration
date.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedBatches = list(
        list(
          FailureMessage = "string",
          FailedItems = list(
            list(
              ConfigRuleName = "string",
              ResourceType = "string",
              ResourceId = "string",
              Message = "string",
              ExpirationTime = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$put_remediation_exceptions(
      ConfigRuleName = "string",
      ResourceKeys = list(
        list(
          ResourceType = "string",
          ResourceId = "string"
        )
      ),
      Message = "string",
      ExpirationTime = as.POSIXct(
        "2015-01-01"
      )
    )
