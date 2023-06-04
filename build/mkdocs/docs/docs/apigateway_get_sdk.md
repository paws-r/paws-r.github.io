<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_sdk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a client SDK for a RestApi and Stage

### Description

Generates a client SDK for a RestApi and Stage.

### Usage

    apigateway_get_sdk(restApiId, stageName, sdkType, parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_sdk_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_sdk_:_stageName">stageName</code></td>
<td><p>[required] The name of the Stage that the SDK will use.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_sdk_:_sdkType">sdkType</code></td>
<td><p>[required] The language for the generated SDK. Currently
<code>java</code>, <code>javascript</code>, <code>android</code>,
<code>objectivec</code> (for iOS), <code>swift</code> (for iOS), and
<code>ruby</code> are supported.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_sdk_:_parameters">parameters</code></td>
<td><p>A string-to-string key-value map of query parameters
<code>sdkType</code>-dependent properties of the SDK. For
<code>sdkType</code> of <code>objectivec</code> or <code>swift</code>, a
parameter named <code>classPrefix</code> is required. For
<code>sdkType</code> of <code>android</code>, parameters named
<code>groupId</code>, <code>artifactId</code>,
<code>artifactVersion</code>, and <code>invokerPackage</code> are
required. For <code>sdkType</code> of <code>java</code>, parameters
named <code>serviceName</code> and <code>javaPackageName</code> are
required.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentType = "string",
      contentDisposition = "string",
      body = raw
    )

### Request syntax

    svc$get_sdk(
      restApiId = "string",
      stageName = "string",
      sdkType = "string",
      parameters = list(
        "string"
      )
    )
