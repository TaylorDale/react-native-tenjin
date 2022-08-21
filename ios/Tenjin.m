// Tenjin.m

#import "Tenjin.h"


@implementation Tenjin

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    // TODO: Implement some actually useful functionality
    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
}

RCT_EXPORT_METHOD(initTenjin:(NSString *)apiKey gdprParam:(BOOL)gdpr testModeParam:(BOOL)testMode callback:(RCTResponseSenderBlock)callback)
{
    [TenjinSDK initialize:apiKey];
    [TenjinSDK registerAppForAdNetworkAttribution];
    if (gdpr) {
        [TenjinSDK optIn];
    }    
    if (testMode) {
        [TenjinSDK debugLogs];
    }
    
    [TenjinSDK connect];
    callback(@[]);
}

@end
