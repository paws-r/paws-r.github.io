<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_triggers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the names of all trigger resources in this Amazon Web Services account, or the resources with the specified tag

### Description

Retrieves the names of all trigger resources in this Amazon Web Services
account, or the resources with the specified tag. This operation allows
you to see which resources are available in your account, and their
names.

This operation takes the optional `Tags` field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.

### Usage

    glue_list_triggers(NextToken, DependentJobName, MaxResults, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_triggers_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation request.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_triggers_:_DependentJobName">DependentJobName</code></td>
<td><p>The name of the job for which to retrieve triggers. The trigger
that can start this job is returned. If there is no such trigger, all
triggers are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_triggers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_triggers_:_Tags">Tags</code></td>
<td><p>Specifies to return only these tagged resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TriggerNames = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_triggers(
      NextToken = "string",
      DependentJobName = "string",
      MaxResults = 123,
      Tags = list(
        "string"
      )
    )
