<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_availability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an AvailabilityConfiguration for the given WorkMail organization and domain

### Description

Creates an `AvailabilityConfiguration` for the given WorkMail
organization and domain.

### Usage

    workmail_create_availability_configuration(ClientToken, OrganizationId,
      DomainName, EwsProvider, LambdaProvider)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_availability_configuration_:_ClientToken">ClientToken</code></td>
<td><p>An idempotent token that ensures that an API request is executed
only once.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_availability_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the
<code>AvailabilityConfiguration</code> will be created.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_availability_configuration_:_DomainName">DomainName</code></td>
<td><p>[required] The domain to which the provider applies.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_availability_configuration_:_EwsProvider">EwsProvider</code></td>
<td><p>Exchange Web Services (EWS) availability provider definition. The
request must contain exactly one provider definition, either
<code>EwsProvider</code> or <code>LambdaProvider</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_availability_configuration_:_LambdaProvider">LambdaProvider</code></td>
<td><p>Lambda availability provider definition. The request must contain
exactly one provider definition, either <code>EwsProvider</code> or
<code>LambdaProvider</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_availability_configuration(
      ClientToken = "string",
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
