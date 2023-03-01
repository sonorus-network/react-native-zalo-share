interface configType {
    msg: string;
    link: string;
    linkTitle: string;
    linkSource: string;
    linkThumb: string;
    appName?: string;
}
export declare const shareMessage: (config: configType) => Promise<void>;
export declare const shareFeed: (config: configType) => Promise<void>;
export {};
