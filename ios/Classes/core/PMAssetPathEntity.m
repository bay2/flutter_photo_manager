#import <Photos/Photos.h>
#import "PMAssetPathEntity.h"

@implementation PMAssetPathEntity {}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.type = PM_TYPE_ALBUM;
    }
    
    return self;
}


- (instancetype)initWithId:(NSString *)id name:(NSString *)name {
    self = [super init];
    if (self) {
        self.id = id;
        self.name = name;
        self.type = PM_TYPE_ALBUM;
    }
    
    return self;
}

+ (instancetype)entityWithId:(NSString *)id name:(NSString *)name {
    return [[self alloc] initWithId:id name:name];
}

@end


@implementation PMAssetEntity {}

- (instancetype)initWithId:(NSString *)id createDt:(long)createDt width:(NSUInteger)width height:(NSUInteger)height
duration:(long)duration type:(int)type {
    self = [super init];
    if (self) {
        self.id = id;
        self.createDt = createDt;
        self.width = width;
        self.height = height;
        self.duration = duration;
        self.type = type;
    }
    
    return self;
}

+ (instancetype)entityWithId:(NSString *)id createDt:(long)createDt width:(NSUInteger)width height:(NSUInteger)height
duration:(long)duration type:(int)type {
    return [[self alloc] initWithId:id createDt:createDt width:width height:height duration:duration type:type];
}


@end
