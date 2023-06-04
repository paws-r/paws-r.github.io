<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the Data Catalog resource policy for access control

### Description

Sets the Data Catalog resource policy for access control.

### Usage

    glue_put_resource_policy(PolicyInJson, ResourceArn, PolicyHashCondition,
      PolicyExistsCondition, EnableHybrid)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_put_resource_policy_:_PolicyInJson">PolicyInJson</code></td>
<td><p>[required] Contains the policy document to set, in JSON
format.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>Do not use. For internal use only.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_put_resource_policy_:_PolicyHashCondition">PolicyHashCondition</code></td>
<td><p>The hash value returned when the previous policy was set using
<code>put_resource_policy</code>. Its purpose is to prevent concurrent
modifications of a policy. Do not use this parameter if no previous
policy has been set.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_put_resource_policy_:_PolicyExistsCondition">PolicyExistsCondition</code></td>
<td><p>A value of <code>MUST_EXIST</code> is used to update a policy. A
value of <code>NOT_EXIST</code> is used to create a new policy. If a
value of <code>NONE</code> or a null value is used, the call does not
depend on the existence of a policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_put_resource_policy_:_EnableHybrid">EnableHybrid</code></td>
<td><p>If <code>'TRUE'</code>, indicates that you are using both methods
to grant cross-account access to Data Catalog resources:</p>
<ul>
<li><p>By directly updating the resource policy with
<code>PutResourePolicy</code></p></li>
<li><p>By using the <strong>Grant permissions</strong> command on the
Amazon Web Services Management Console.</p></li>
</ul>
<p>Must be set to <code>'TRUE'</code> if you have already used the
Management Console to grant cross-account access, otherwise the call
fails. Default is 'FALSE'.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyHash = "string"
    )

### Request syntax

    svc$put_resource_policy(
      PolicyInJson = "string",
      ResourceArn = "string",
      PolicyHashCondition = "string",
      PolicyExistsCondition = "MUST_EXIST"|"NOT_EXIST"|"NONE",
      EnableHybrid = "TRUE"|"FALSE"
    )
