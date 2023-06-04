<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_repository_triggers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about triggers configured for a repository

### Description

Gets information about triggers configured for a repository.

### Usage

    codecommit_get_repository_triggers(repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_repository_triggers_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository for which the trigger is
configured.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configurationId = "string",
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

### Request syntax

    svc$get_repository_triggers(
      repositoryName = "string"
    )
