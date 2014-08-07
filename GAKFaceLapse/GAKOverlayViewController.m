//
//  GAKOverlayViewController.m
//  GAKFaceLapse
//
//  Created by Kimberley Yu on 8/6/14.
//  Copyright (c) 2014 Kimberley. All rights reserved.
//

#import "GAKOverlayViewController.h"
//#import "OverlayView.h"

@interface GAKOverlayViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *overlayImage;


@end

@implementation GAKOverlayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.overlayImage.image = chosenImage;
    //    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    // to save to camera roll
    UIImageWriteToSavedPhotosAlbum(chosenImage, nil, nil, nil);
}

// no canceling!!
//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
//
//    [picker dismissViewControllerAnimated:YES completion:NULL];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (void)takePhoto:(id)sender
{
    
}

- (IBAction)choosePhoto:(id)sender
{
    UIImagePickerController *photoLibraryController = [[UIImagePickerController alloc] init];
    photoLibraryController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:photoLibraryController animated:YES completion:NULL];

}

@end