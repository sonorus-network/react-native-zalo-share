// @flow

import { NativeModules } from 'react-native';

const { ZaloShare } = NativeModules;

interface configType {
  msg: string,
  link: string,
  linkTitle: string,
  linkSource: string,
  linkThumb: string,
  appName?: string, // app name back ios app when cancel share
}

export const shareMessage = async (config: configType) => {
  await ZaloShare.shareMessage(config)
}

export const shareFeed = async (config: configType) => {
  await ZaloShare.shareFeed(config)
}