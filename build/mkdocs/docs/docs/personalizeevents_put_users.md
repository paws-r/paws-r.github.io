<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalizeevents_put_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more users to a Users dataset

### Description

Adds one or more users to a Users dataset. For more information see
[Importing Users
Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).

### Usage

    personalizeevents_put_users(datasetArn, users)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalizeevents_put_users_:_datasetArn">datasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Users dataset
you are adding the user or users to.</p></td>
</tr>
<tr class="even">
<td><code id="personalizeevents_put_users_:_users">users</code></td>
<td><p>[required] A list of user data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_users(
      datasetArn = "string",
      users = list(
        list(
          userId = "string",
          properties = "string"
        )
      )
    )
