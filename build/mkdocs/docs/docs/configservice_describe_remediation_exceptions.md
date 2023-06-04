<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_remediation_exceptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of one or more remediation exceptions

### Description

Returns the details of one or more remediation exceptions. A detailed
view of a remediation exception for a set of resources that includes an
explanation of an exception and the time when the exception will be
deleted. When you specify the limit and the next token, you receive a
paginated response.

Config generates a remediation exception when a problem occurs executing
a remediation action to a specific resource. Remediation exceptions
blocks auto-remediation until the exception is cleared.

When you specify the limit and the next token, you receive a paginated
response.

Limit and next token are not applicable if you request resources in
batch. It is only applicable, when you request all resources.

### Usage

    configservice_describe_remediation_exceptions(ConfigRuleName,
      ResourceKeys, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_remediation_exceptions_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_remediation_exceptions_:_ResourceKeys">ResourceKeys</code></td>
<td><p>An exception list of resource exception keys to be processed with
the current request. Config adds exception for each resource key. For
example, Config adds 3 exceptions for 3 resource keys.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_remediation_exceptions_:_Limit">Limit</code></td>
<td><p>The maximum number of RemediationExceptionResourceKey returned on
each page. The default is 25. If you specify 0, Config uses the
default.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_remediation_exceptions_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned in a previous request
that you use to request the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RemediationExceptions = list(
        list(
          ConfigRuleName = "string",
          ResourceType = "string",
          ResourceId = "string",
          Message = "string",
          ExpirationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_remediation_exceptions(
      ConfigRuleName = "string",
      ResourceKeys = list(
        list(
          ResourceType = "string",
          ResourceId = "string"
        )
      ),
      Limit = 123,
      NextToken = "string"
    )
