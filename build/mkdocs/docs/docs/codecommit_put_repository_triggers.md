<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_put_repository_triggers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces all triggers for a repository

### Description

Replaces all triggers for a repository. Used to create or delete
triggers.

### Usage

    codecommit_put_repository_triggers(repositoryName, triggers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_put_repository_triggers_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to create or
update the trigger.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_put_repository_triggers_:_triggers">triggers</code></td>
<td><p>[required] The JSON block of configuration information for each
trigger.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configurationId = "string"
    )

### Request syntax

    svc$put_repository_triggers(
      repositoryName = "string",
      triggers = list(
        list(
          name = "string",
          destinationArn = "string",
          customData = "string",
          branches = list(
            "string"
          ),
          events = list(
            "all"|"updateReference"|"createReference"|"deleteReference"
          )
        )
      )
    )
