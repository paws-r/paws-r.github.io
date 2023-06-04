<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_start_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an App Runner service

### Description

Initiate a manual deployment of the latest commit in a source code
repository or the latest image in a source image repository to an App
Runner service.

For a source code repository, App Runner retrieves the commit and builds
a Docker image. For a source image repository, App Runner retrieves the
latest Docker image. In both cases, App Runner then deploys the new
image to your service and starts a new container instance.

This is an asynchronous operation. On a successful call, you can use the
returned `OperationId` and the `list_operations` call to track the
operation's progress.

### Usage

    apprunner_start_deployment(ServiceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_start_deployment_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want to manually deploy to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$start_deployment(
      ServiceArn = "string"
    )
