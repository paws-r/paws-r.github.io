<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Image Builder image resource

### Description

Deletes an Image Builder image resource. This does not delete any EC2
AMIs or ECR container images that are created during the image build
process. You must clean those up separately, using the appropriate
Amazon EC2 or Amazon ECR console actions, or API or CLI commands.

-   To deregister an EC2 Linux AMI, see [Deregister your Linux
    AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html)
    in the *Amazon EC2 User Guide* .

-   To deregister an EC2 Windows AMI, see [Deregister your Windows
    AMI](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html)
    in the *Amazon EC2 Windows Guide* .

-   To delete a container image from Amazon ECR, see [Deleting an
    image](https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html)
    in the *Amazon ECR User Guide*.

### Usage

    imagebuilder_delete_image(imageBuildVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_delete_image_:_imageBuildVersionArn">imageBuildVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Image Builder
image resource to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imageBuildVersionArn = "string"
    )

### Request syntax

    svc$delete_image(
      imageBuildVersionArn = "string"
    )
