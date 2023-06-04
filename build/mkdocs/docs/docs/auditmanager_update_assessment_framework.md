<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_update_assessment_framework</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a custom framework in Audit Manager

### Description

Updates a custom framework in Audit Manager.

### Usage

    auditmanager_update_assessment_framework(frameworkId, name, description,
      complianceType, controlSets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_framework_:_frameworkId">frameworkId</code></td>
<td><p>[required] The unique identifier for the framework.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_framework_:_name">name</code></td>
<td><p>[required] The name of the framework to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_framework_:_description">description</code></td>
<td><p>The description of the updated framework.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_framework_:_complianceType">complianceType</code></td>
<td><p>The compliance type that the new custom framework supports, such
as CIS or HIPAA.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_framework_:_controlSets">controlSets</code></td>
<td><p>[required] The control sets that are associated with the
framework.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      framework = list(
        arn = "string",
        id = "string",
        name = "string",
        type = "Standard"|"Custom",
        complianceType = "string",
        description = "string",
        logo = "string",
        controlSources = "string",
        controlSets = list(
          list(
            id = "string",
            name = "string",
            controls = list(
              list(
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

    svc$update_assessment_framework(
      frameworkId = "string",
      name = "string",
      description = "string",
      complianceType = "string",
      controlSets = list(
        list(
          id = "string",
          name = "string",
          controls = list(
            list(
              id = "string"
            )
          )
        )
      )
    )
