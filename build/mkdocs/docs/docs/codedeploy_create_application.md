<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application

### Description

Creates an application.

### Usage

    codedeploy_create_application(applicationName, computePlatform, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_create_application_:_applicationName">applicationName</code></td>
<td><p>[required] The name of the application. This name must be unique
with the applicable IAM or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_application_:_computePlatform">computePlatform</code></td>
<td><p>The destination platform type for the deployment
(<code>Lambda</code>, <code>Server</code>, or
<code>ECS</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="codedeploy_create_application_:_tags">tags</code></td>
<td><p>The metadata that you apply to CodeDeploy applications to help
you organize and categorize them. Each tag consists of a key and an
optional value, both of which you define.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationId = "string"
    )

### Request syntax

    svc$create_application(
      applicationName = "string",
      computePlatform = "Server"|"Lambda"|"ECS",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
