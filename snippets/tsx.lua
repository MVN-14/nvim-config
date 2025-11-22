return {
	ReactNativeComponentBasic = {
		prefix = "rnc",
		description = "Basic React Native Component Template",
		body = [[
const $1 = () => {
	return (
	)
}

export default $1
]],
	},
	ReactNativeComponentView = {
		prefix = "rncv",
		description = "React Native Component Template With View",
		body = [[
import { View } from 'react-native';

const $1 = () => {
	return (
		<View>
		</View>
	)
}
export default $1

]],
	},
	ReactNativeComponentStylesheet = {
		prefix = "rncs",
		description = "React Native Component With Stylesheet",
		body = [[
import { StyleSheet, View } from 'react-native';

const $1 = () => {
	return (
	)
}

export default $1

const styles = StyleSheet.create({})

]]
	},
	ReactNativeComponentViewStylesheet = {
		prefix = "rncvs",
		description = "React Native Component With View and Stylesheet",
		body = [[
import { View, StyleSheet } from 'react-native';

const $1 = () => {
	return (
		<View>
		</View>
	)
}

export default $1

const styles = StyleSheet.create({})

]]
	}
}

