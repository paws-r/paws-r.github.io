<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_test_availability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs a test on an availability provider to ensure that access is allowed

### Description

Performs a test on an availability provider to ensure that access is
allowed. For EWS, it verifies the provided credentials can be used to
successfully log in. For Lambda, it verifies that the Lambda function
can be invoked and that the resource access policy was configured to
deny anonymous access. An anonymous invocation is one done without
providing either a `SourceArn` or `SourceAccount` header.

The request must contain either one provider definition (`EwsProvider`
or `LambdaProvider`) or the `DomainName` parameter. If the `DomainName`
parameter is provided, the configuration stored under the `DomainName`
will be tested.

### Usage

    workmail_test_availability_configuration(OrganizationId, DomainName,
      EwsProvider, LambdaProvider)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_test_availability_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization where the availability
provider will be tested.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_test_availability_configuration_:_DomainName">DomainName</code></td>
<td><p>The domain to which the provider applies. If this field is
provided, a stored availability provider associated to this domain name
will be tested.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_test_availability_configuration_:_EwsProvider">EwsProvider</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="workmail_test_availability_configuration_:_LambdaProvider">LambdaProvider</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TestPassed = TRUE|FALSE,
      FailureReason = "string"
    )

### Request syntax

    svc$test_availability_configuration(
      OrganizationId = "string",
      DomainName = "string",
      EwsProvider = list(
        EwsEndpoint = "string",
        EwsUsername = "string",
        EwsPassword = "string"
      ),
      LambdaProvider = list(
        LambdaArn = "string"
      )
    )
