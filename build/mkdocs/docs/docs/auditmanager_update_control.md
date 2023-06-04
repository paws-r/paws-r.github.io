<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_update_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a custom control in Audit Manager

### Description

Updates a custom control in Audit Manager.

### Usage

    auditmanager_update_control(controlId, name, description,
      testingInformation, actionPlanTitle, actionPlanInstructions,
      controlMappingSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_update_control_:_controlId">controlId</code></td>
<td><p>[required] The identifier for the control.</p></td>
</tr>
<tr class="even">
<td><code id="auditmanager_update_control_:_name">name</code></td>
<td><p>[required] The name of the updated control.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_control_:_description">description</code></td>
<td><p>The optional description of the control.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_control_:_testingInformation">testingInformation</code></td>
<td><p>The steps that you should follow to determine if the control is
met.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_control_:_actionPlanTitle">actionPlanTitle</code></td>
<td><p>The title of the action plan for remediating the
control.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_control_:_actionPlanInstructions">actionPlanInstructions</code></td>
<td><p>The recommended actions to carry out if the control isn't
fulfilled.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_control_:_controlMappingSources">controlMappingSources</code></td>
<td><p>[required] The data mapping sources for the control.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      control = list(
        arn = "string",
        id = "string",
        type = "Standard"|"Custom",
        name = "string",
        description = "string",
        testingInformation = "string",
        actionPlanTitle = "string",
        actionPlanInstructions = "string",
        controlSources = "string",
        controlMappingSources = list(
          list(
            sourceId = "string",
            sourceName = "string",
            sourceDescription = "string",
            sourceSetUpOption = "System_Controls_Mapping"|"Procedural_Controls_Mapping",
            sourceType = "AWS_Cloudtrail"|"AWS_Config"|"AWS_Security_Hub"|"AWS_API_Call"|"MANUAL",
            sourceKeyword = list(
              keywordInputType = "SELECT_FROM_LIST",
              keywordValue = "string"
            ),
            sourceFrequency = "DAILY"|"WEEKLY"|"MONTHLY",
            troubleshootingText = "string"
          )
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        createdBy = "string",
        lastUpdatedBy = "string",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$update_control(
      controlId = "string",
      name = "string",
      description = "string",
      testingInformation = "string",
      actionPlanTitle = "string",
      actionPlanInstructions = "string",
      controlMappingSources = list(
        list(
          sourceId = "string",
          sourceName = "string",
          sourceDescription = "string",
          sourceSetUpOption = "System_Controls_Mapping"|"Procedural_Controls_Mapping",
          sourceType = "AWS_Cloudtrail"|"AWS_Config"|"AWS_Security_Hub"|"AWS_API_Call"|"MANUAL",
          sourceKeyword = list(
            keywordInputType = "SELECT_FROM_LIST",
            keywordValue = "string"
          ),
          sourceFrequency = "DAILY"|"WEEKLY"|"MONTHLY",
          troubleshootingText = "string"
        )
      )
    )
