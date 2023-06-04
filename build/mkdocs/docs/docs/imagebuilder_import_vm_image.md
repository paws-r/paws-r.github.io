<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_import_vm_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When you export your virtual machine (VM) from its virtualization environment, that process creates a set of one or more disk container files that act as snapshots of your VM’s environment, settings, and data

### Description

When you export your virtual machine (VM) from its virtualization
environment, that process creates a set of one or more disk container
files that act as snapshots of your VM’s environment, settings, and
data. The Amazon EC2 API
[ImportImage](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html)
action uses those files to import your VM and create an AMI. To import
using the CLI command, see
[import-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html)

You can reference the task ID from the VM import to pull in the AMI that
the import created as the base image for your Image Builder recipe.

### Usage

    imagebuilder_import_vm_image(name, semanticVersion, description,
      platform, osVersion, vmImportTaskId, tags, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_import_vm_image_:_name">name</code></td>
<td><p>[required] The name of the base image that is created by the
import process.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_vm_image_:_semanticVersion">semanticVersion</code></td>
<td><p>[required] The semantic version to attach to the base image that
was created during the import process. This version follows the semantic
version syntax.</p>
<p>The semantic version has four nodes:
\&lt;major\&gt;.\&lt;minor\&gt;.\&lt;patch\&gt;/\&lt;build\&gt;. You can
assign values for the first three, and can filter on all of them.</p>
<p><strong>Assignment:</strong> For the first three nodes you can assign
any positive integer value, including zero, with an upper limit of
2^30-1, or 1073741823 for each node. Image Builder automatically assigns
the build number to the fourth node.</p>
<p><strong>Patterns:</strong> You can use any numeric pattern that
adheres to the assignment requirements for the nodes that you can
assign. For example, you might choose a software version pattern, such
as 1.0.0, or a date, such as 2021.01.01.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_import_vm_image_:_description">description</code></td>
<td><p>The description for the base image that is created by the import
process.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_vm_image_:_platform">platform</code></td>
<td><p>[required] The operating system platform for the imported
VM.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_import_vm_image_:_osVersion">osVersion</code></td>
<td><p>The operating system version for the imported VM.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_vm_image_:_vmImportTaskId">vmImportTaskId</code></td>
<td><p>[required] The <code>importTaskId</code> (API) or
<code>ImportTaskId</code> (CLI) from the Amazon EC2 VM import process.
Image Builder retrieves information from the import process to pull in
the AMI that is created from the VM source as the base image for your
recipe.</p></td>
</tr>
<tr class="odd">
<td><code id="imagebuilder_import_vm_image_:_tags">tags</code></td>
<td><p>Tags that are attached to the import resources.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_import_vm_image_:_clientToken">clientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier you provide to
ensure idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
idempotency</a> in the <em>Amazon EC2 API Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imageArn = "string",
      clientToken = "string"
    )

### Request syntax

    svc$import_vm_image(
      name = "string",
      semanticVersion = "string",
      description = "string",
      platform = "Windows"|"Linux",
      osVersion = "string",
      vmImportTaskId = "string",
      tags = list(
        "string"
      ),
      clientToken = "string"
    )
