<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_availability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing AvailabilityConfiguration for the given WorkMail organization and domain

### Description

Updates an existing `AvailabilityConfiguration` for the given WorkMail
organization and domain.

### Usage

    workmail_update_availability_configuration(OrganizationId, DomainName,
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
id="workmail_update_availability_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the
<code>AvailabilityConfiguration</code> will be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_availability_configuration_:_DomainName">DomainName</code></td>
<td><p>[required] The domain to which the provider applies the
availability configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_availability_configuration_:_EwsProvider">EwsProvider</code></td>
<td><p>The EWS availability provider definition. The request must
contain exactly one provider definition, either <code>EwsProvider</code>
or <code>LambdaProvider</code>. The previously stored provider will be
overridden by the one provided.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_availability_configuration_:_LambdaProvider">LambdaProvider</code></td>
<td><p>The Lambda availability provider definition. The request must
contain exactly one provider definition, either <code>EwsProvider</code>
or <code>LambdaProvider</code>. The previously stored provider will be
overridden by the one provided.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_availability_configuration(
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
