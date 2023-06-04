<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_activations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes details about the activation, such as the date and time the activation was created, its expiration date, the Identity and Access Management (IAM) role assigned to the managed nodes in the activation, and the number of nodes registered by using this activation

### Description

Describes details about the activation, such as the date and time the
activation was created, its expiration date, the Identity and Access
Management (IAM) role assigned to the managed nodes in the activation,
and the number of nodes registered by using this activation.

### Usage

    ssm_describe_activations(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_describe_activations_:_Filters">Filters</code></td>
<td><p>A filter to view information about your activations.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_activations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_activations_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActivationList = list(
        list(
          ActivationId = "string",
          Description = "string",
          DefaultInstanceName = "string",
          IamRole = "string",
          RegistrationLimit = 123,
          RegistrationsCount = 123,
          ExpirationDate = as.POSIXct(
            "2015-01-01"
          ),
          Expired = TRUE|FALSE,
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_activations(
      Filters = list(
        list(
          FilterKey = "ActivationIds"|"DefaultInstanceName"|"IamRole",
          FilterValues = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
