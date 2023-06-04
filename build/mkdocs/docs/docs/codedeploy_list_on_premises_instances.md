<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_on_premises_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of names for one or more on-premises instances

### Description

Gets a list of names for one or more on-premises instances.

Unless otherwise specified, both registered and deregistered on-premises
instance names are listed. To list only registered or deregistered
on-premises instance names, use the registration status parameter.

### Usage

    codedeploy_list_on_premises_instances(registrationStatus, tagFilters,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_on_premises_instances_:_registrationStatus">registrationStatus</code></td>
<td><p>The registration status of the on-premises instances:</p>
<ul>
<li><p><code>Deregistered</code>: Include deregistered on-premises
instances in the resulting list.</p></li>
<li><p><code>Registered</code>: Include registered on-premises instances
in the resulting list.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_on_premises_instances_:_tagFilters">tagFilters</code></td>
<td><p>The on-premises instance tags that are used to restrict the
on-premises instance names returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_list_on_premises_instances_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous list on-premises
instances call. It can be used to return the next set of on-premises
instances in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instanceNames = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_on_premises_instances(
      registrationStatus = "Registered"|"Deregistered",
      tagFilters = list(
        list(
          Key = "string",
          Value = "string",
          Type = "KEY_ONLY"|"VALUE_ONLY"|"KEY_AND_VALUE"
        )
      ),
      nextToken = "string"
    )
